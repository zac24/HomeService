//
//  LoginViewController.swift
//  HomeService
//
//  Created by Prashant Dwivedi on 4/1/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit
import GoogleSignIn
import FacebookLogin
import FacebookCore
import Alamofire
import SwiftyJSON
import AlamofireObjectMapper

class LoginViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var googleButton: GIDSignInButton!
//    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var fbButtonView: UIView!
    
    var registerUserResponse:[UserRegister] = []
    var registerResponse : JSON!
    
    let facebookButton : UIButton = {
        let fbButton  = UIButton(type:.custom)
        fbButton.backgroundColor = UIColor(red: 74/255, green: 104/255, blue: 173/255, alpha: 1.0)
        fbButton.titleLabel?.font = UIFont(name: "Verdana-Bold", size: 16)
        fbButton.setTitle("facebook", for: .normal)
        fbButton.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        return fbButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
        view.addSubview(facebookButton)
        facebookButton.anchor(top: continueButton.bottomAnchor, paddingTop: 63, left: continueButton.leftAnchor, paddingLeft:0, bottom: nil, paddingBottom: 0, right: googleButton.leftAnchor, paddingRight: -37, width: googleButton.frame.width, height: 44)

    }
    
    func setupViews() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @objc func loginButtonClicked() {
        let loginManager = LoginManager()
        loginManager.logIn(readPermissions: [.publicProfile, .email], viewController: self, completion: {
            result in
            self.loginManagerDidComplete(result)
        })
        }
    
    func loginManagerDidComplete(_ result: LoginResult) {
        let alertController: UIAlertController
        switch result {
        case .cancelled:
            loginCancelled()
            alertController = UIAlertController(title: "Login Cancelled", message: "User cancelled login.", preferredStyle: .alert)
        case .failed(let error):
            alertController = UIAlertController(title: "Login Fail", message: "Login failed with error \(error)", preferredStyle: .alert)
        case .success(let grantedPermissions, _, _):
            
            alertController = UIAlertController(title: "Login Success", message: "Login succeeded with granted permissions: \(grantedPermissions)", preferredStyle: .alert)
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeVC")
            self.navigationController?.pushViewController(homeVC, animated: true)
            
        }
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    func loginCancelled() {
    
    }
    
    @IBAction func ContinueButtonTapped(_ sender: Any) {
        let requestUrl = registerUserUrl ()
        Alamofire.request(requestUrl, method: .post, parameters: ["phone":"1234567890"], encoding: JSONEncoding.default, headers: nil).responseData {
            (response) in
            debugPrint("All Response Info: \(response)")
            if let data = response.result.value, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)")
                
//                do {
//                    self.registerUserResponse = try JSONDecoder().decode([UserRegister].self, from: data)
//                }
//                catch {
//                    print ("error parsing json")
//                }
            }
//            let [UserRegister] = Mapper<UserRegister>.map(JSONObject:response.result.value)
            
            switch response.result {
            case .success(let value):
               self.registerResponse = JSON(value)
                
                print("JSON: \(self.registerResponse)")
                print(self.registerResponse["otp"])
            case .failure(let error):
                print(error)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HomeSegueID" {
            if let vc = segue.destination as? HomeViewController {
                vc.otp = self.registerResponse["otp"].string
            }
        }
    }
}

extension UIView {
    func anchor (top:NSLayoutYAxisAnchor?, paddingTop:CGFloat, left:NSLayoutXAxisAnchor?, paddingLeft:CGFloat, bottom:NSLayoutYAxisAnchor?, paddingBottom:CGFloat, right:NSLayoutXAxisAnchor?, paddingRight:CGFloat, width:CGFloat, height:CGFloat){

        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}

//
//  OTPViewController.swift
//  HomeService
//
//  Created by Prashant Dwivedi on 4/11/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

class OTPViewController: UIViewController {

    public var otp : String!
    public var userMobileNumber : String!
    @IBOutlet weak var enterOtpLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var otpTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var resendOtpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
//        var timer = Timer.scheduledTimer(withTimeInterval: <#T##TimeInterval#>, repeats: <#T##Bool#>, block: <#T##(Timer) -> Void#>)
        
    }
    
    func setupViews() {
        
        enterOtpLabel.text = OTPViewScreen.OTP_LABEL_TEXT + userMobileNumber
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.hidesBackButton = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

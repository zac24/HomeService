//
//  OTPViewController.swift
//  HomeService
//
//  Created by Prashant Dwivedi on 4/11/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

class OTPViewController: UIViewController {

    var otp:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()

        // Do any additional setup after loading the view.
    }
    
    func setupViews() {
        self.navigationController?.navigationBar.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

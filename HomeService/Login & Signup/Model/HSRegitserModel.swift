//
//  HSRegitserModel.swift
//  HomeService
//
//  Created by Prashant Dwivedi on 4/9/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import Foundation
import UIKit

struct UserRegister: Decodable {
//    let id : Int?
    let name : String?
    let email : String?
    let phone : String?
    let gender : String?
    let password : String?
    let dob : String?
    let image : String?
    let source : String?
    let fcmId : String?
    let otp : String?
    let isVerified : String?
    let isSocial : String?
//    let referCodeStatus : Bool?
    let referToCode : String?
    let country : String?
    let status : String?
    let token : String?
    let deviceId : String?
//    let cities : [String]?
//    let tax : [Tax]?
//    let userName : String?
    
}
//
//struct Tax : Decodable {
//    let deviceId : Int?
//    let financialYear : String?
//    let country : String?
//    let name : String?
//    let state : String?
//    let taxCode : String?
//    let value : Int?
//
//}
//
//struct UserName : Decodable {
//    let email : String?
//    let phone : String?
//}


/*
 "userName": "{\"email\":\"mithileshkumar1991@gmail.com\",\"phone\":\"8828567966\"}"
 */

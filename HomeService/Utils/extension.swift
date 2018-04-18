//
//  extension.swift
//  HomeService
//
//  Created by Prashant Dwivedi on 4/17/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor (red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static func rgbWithAlpha(red: CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat) -> UIColor {
        return UIColor (red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}

extension UITextField {
    
}
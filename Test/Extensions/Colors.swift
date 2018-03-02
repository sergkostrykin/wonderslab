//
//  Colors.swift
//  Test
//
//  Created by Sergiy Kostrykin on 3/2/18.
//  Copyright © 2018 Sergiy Kostrykin. All rights reserved.
//

import UIKit
extension UIColor {
    
    class var colorBlue: UIColor {
        return UIColorMakeRGB(red: 100, green: 113, blue: 241)
    }
    
    class var colorPurple: UIColor {
        return UIColorMakeRGB(red: 201, green: 70, blue: 234)
    }
    
}

func UIColorMakeRGBAlpha(red: Float, green: Float, blue: Float, alpha: Float) -> UIColor {
    return UIColor(red: CGFloat(red / 255.0), green: CGFloat(green / 255.0), blue: CGFloat(blue / 255.0), alpha: CGFloat(alpha))
}

func UIColorMakeRGB(red: Float, green: Float, blue: Float) -> UIColor {
    return UIColorMakeRGBAlpha(red: red, green: green, blue: blue, alpha: 1.0)
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}

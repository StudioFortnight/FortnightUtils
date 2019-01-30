//
//  UIColor.swift
//  FortnightUtils
//
//  Created by Andrea Toso on 30/01/2019.
//

import UIKit

extension UIColor {
    
    /**
     Initializes and returns a color object using the specified opacity and RGB components values.
     */
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
    /**
     Initializes and returns a color object using the specified opacity and HEX components values.
     */
    public convenience init(hex: String, alpha: CGFloat) {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            self.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        } else {
            var rgbValue:UInt32 = 0
            Scanner(string: cString).scanHexInt32(&rgbValue)
            
            let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
            let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
            let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
            
            self.init(red: red, green: green, blue: blue, alpha: alpha)
        }
    }
    
}

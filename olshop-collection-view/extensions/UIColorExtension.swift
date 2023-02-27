//
//  UIColorExtension.swift
//  olshop-collection-view
//
//  Created by Phincon on 27/02/23.
//

import UIKit

extension UIColor {
    
    static var color1: UIColor = UIColor(rgb: 0x1C3D93)
    static var color2: UIColor = UIColor(rgb: 0xE3E2FF)
    static var color3: UIColor = UIColor(rgb: 0xC7CCCE)

    
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

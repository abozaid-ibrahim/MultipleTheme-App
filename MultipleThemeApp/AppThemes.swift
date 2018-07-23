//
//  AppThemes.swift
//  MultipleThemeApp
//
//  Created by Abuzeid on 7/23/18.
//  Copyright © 2018 Abuzeid. All rights reserved.
//

import Foundation
import UIKit



enum ButtonShapes{
    case rectangle, square
}
public enum AppTheme:Int{
    case  green = 1, white = 2
    
    var mainColor: UIColor {
        switch self {
        case .green:
            return UIColor(red: 87.0/255.0, green: 188.0/255.0, blue: 95.0/255.0, alpha: 1.0)
        case .white:
            return UIColor.white
    
        }
    }
}




public protocol UIStyleAppearance  {
    func applyStyle(style:AppTheme)
    static func style() -> Self
}



extension UIButton:UIStyleAppearance{
    public static func style() -> Self {
        return self.init()
    }
    
  
    
   
    public func applyStyle(style: AppTheme) {
        self.backgroundColor = style.mainColor
//        UIButton.appearance().backgroundColor = style.mainColor
    }
    
    
}




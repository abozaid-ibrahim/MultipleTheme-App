//
//  StylableView.swift
//  MultipleThemeApp
//
//  Created by Abuzeid on 7/23/18.
//  Copyright © 2018 Abuzeid. All rights reserved.
//

import Foundation
import UIKit
enum ButtonStyles{
    case `default`,rounded,square
}

extension ButtonStyles{
    func applyAppropiateTheme(){
        switch self {
        case .rounded:
         UIButton.appearance().layer.cornerRadius = 10
            UIButton.appearance().layer.masksToBounds = true
            
            
        case .square:
            UIButton.appearance().layer.cornerRadius = 10
            UIButton.appearance().layer.masksToBounds = true
        case .default:
            print("do nothing now")
        }
    }
}
protocol StyleableView: class where Self: UIView {
   
    
    
    
    
}
extension UIView{
    
}

//
//  ViewController.swift
//  MultipleThemeApp
//
//  Created by Abuzeid on 7/23/18.
//  Copyright © 2018 Abuzeid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //green is the default theme
    var currentTheme:Int = AppTheme.green.rawValue
    
    @IBAction func switchStyleAction(_ sender: Any) {
     
        
        switch currentTheme {
        case AppTheme.green.rawValue:
            ThemeManager.shared.applyTheme(theme: .white)
            currentTheme = AppTheme.white.rawValue
        case AppTheme.white.rawValue:
            ThemeManager.shared.applyTheme(theme: .green)
            currentTheme = AppTheme.green.rawValue
        default:
            print("theme not applied")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
}


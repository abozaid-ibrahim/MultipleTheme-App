//
//  StyleStorage.swift
//  MultipleThemeApp
//
//  Created by Mojaz on 7/23/18.
//  Copyright © 2018 Abuzeid. All rights reserved.
//

import Foundation
 class StyleStorage{
    func save(current theme:AppTheme){
        UserDefaults.standard.set(theme.rawValue, forKey: StorageKeys.theme)
        UserDefaults.standard.synchronize()
    }
    func getStoredTheme()->AppTheme?{
        let raw =  UserDefaults.standard.integer(forKey: StorageKeys.theme)
        guard raw != 0 else { return nil }
        return AppTheme(rawValue: raw)
    }
}


private struct StorageKeys{
    static let theme = "current_theme"
}

//
//  ThemeManager.swift
//  MultipleThemeApp
//
//  Created by Abuzeid on 7/23/18.
//  Copyright © 2018 Abuzeid. All rights reserved.
//

import Foundation
import UIKit




public final class ThemeManager{
    
    private let defaultTheme  = AppTheme.green
    private let themesDB = StyleStorage()
    public static let shared = ThemeManager()
    
    func applyTheme(theme: AppTheme){
    
        self.themesDB.save(current: theme)
        //        theme.changeButtonShape(live: nil)
        ////        self.updateCurrentAppearingView()
        //
        
//        UIButton.style().applyStyle(style: AppTheme.green)
        self.updateCurrentAppearingView()
    }
    
    func currentTheme()->AppTheme{
        return self.themesDB.getStoredTheme() ?? self.defaultTheme
    }
    
    
    private func updateCurrentAppearingView(){
        NotificationCenter.default.post(name: Notification.Name(NormalButton.notifUpdateKey), object: nil)
    }
    
    
}




class NormalButton: UIButton {
    static let notifUpdateKey = "update_style"
  
    var style:ButtonStyles?{
        didSet{
            //            ThemeManager.shared.currentTheme().changeButtonShape(live: self)
            
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.listenForRunTimeChange()
        let style = ThemeManager.shared.currentTheme()
        self.applyStyle(style: style)
        
    }
    
    private func listenForRunTimeChange(){
        NotificationCenter.default.addObserver(self, selector: #selector(self.methodOfReceivedNotification(notification:)), name: Notification.Name("update_style"), object: nil)
    }
    @objc func methodOfReceivedNotification(notification: Notification){
        let style = ThemeManager.shared.currentTheme()
        self.applyStyle(style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.listenForRunTimeChange()
        let style = ThemeManager.shared.currentTheme()
        self.applyStyle(style: style)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
}


















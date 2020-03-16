//
//  Alert.swift
//  GeekGuns
//
//  Created by Anup Gupta on 15/03/20.
//  Copyright © 2020 GeekGuns. All rights reserved.
//

import Foundation
import UIKit


@objc
extension UIViewController {
    
    func showCustomAlert(title: String, msg: String) {
        let alert = UIAlertController.init(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil);
    }
    
    func showCustomAutoDismissAlert(title: String, msg: String) {
        let alert = UIAlertController.init(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil);
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            
            alert.dismiss(animated: true, completion: nil)
        }
    }
}

@objc
extension UIAlertController {
    
    
    class func showAlert(title: String, msg: String) {
        var topWindow: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
        topWindow?.rootViewController = UIViewController()
        topWindow?.windowLevel = UIWindowLevelAlert + 1
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel) { _ in
            // continue your work
            // important to hide the window after work completed.
            // this also keeps a reference to the window until the action is invoked.
            topWindow?.isHidden = true // if you want to hide the topwindow then use this
            topWindow = nil // if you want to hide the topwindow then use this
        })
        topWindow?.makeKeyAndVisible()
        topWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        
    }
    
    
    class func showAutoDismissAlert(title: String, msg: String) {
        var topWindow: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
        topWindow?.rootViewController = UIViewController()
        topWindow?.windowLevel = UIWindowLevelAlert + 1
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel) { _ in
            // continue your work
            // important to hide the window after work completed.
            // this also keeps a reference to the window until the action is invoked.
            topWindow?.isHidden = true // if you want to hide the topwindow then use this
            topWindow = nil // if you want to hide the topwindow then use this
        })
        topWindow?.makeKeyAndVisible()
        topWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            
            alert.dismiss(animated: true, completion: nil)
        }
        
    }
    
    
}

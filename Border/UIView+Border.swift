//
//  UIView+Border.swift
//  GeekGuns
//
//  Created by Anup Gupta on 06/02/18.
//  Copyright © 2018 GeekGuns. All rights reserved.
//

import UIKit
import Swift

extension UIView {
    
    
    func showBorder() -> UIView {
        
        let myview = self
        
        
            myview.layer.cornerRadius = 5.0
            let lightGrayColor = UIColor.lightGray
            myview.layer.borderColor = lightGrayColor.cgColor
            myview.layer.borderWidth = 0.2
            myview.layer.shadowColor = UIColor (red: 225.0/255.0, green: 228.0/255.0, blue: 228.0/255.0, alpha: 1.0).cgColor
            myview.layer.shadowOpacity = 1.0
            myview.layer.shadowRadius = 5.0
        
            let cgsize = CGSize(width: 5.0, height: 5.0)
            myview.layer.shadowOffset = cgsize
        
        return myview
    }
    
    // objective C code Below
    
    
    
    
    //        UIView* shadowView = [cell viewWithTag:99];
    //        shadowView.backgroundColor=[UIColor colorWithRed:228.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:0.5];
    //        [shadowView.layer setCornerRadius:5.0f];
    //        [shadowView.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    //        [shadowView.layer setBorderWidth:0.2f];
    //        [shadowView.layer setShadowColor:[UIColor colorWithRed:225.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:1.0].CGColor];
    //        [shadowView.layer setShadowOpacity:1.0];
    //        [shadowView.layer setShadowRadius:5.0];
    //        [shadowView.layer setShadowOffset:CGSizeMake(5.0f, 5.0f)];
    
  
}

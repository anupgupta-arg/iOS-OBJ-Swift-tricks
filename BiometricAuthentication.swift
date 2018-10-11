//
//  BiometricAuthentication.swift
//  
//
//  Created by Anup Gupta on 26/07/18.
//  Copyright © 2018 Geekguns. All rights reserved.



import UIKit
import LocalAuthentication

class BiometricAuthentication {
    

    private static var _instance: BiometricAuthentication?;
    
    private init() {
        
    }
    
    public static func getSingleton() -> BiometricAuthentication {
        if (BiometricAuthentication._instance == nil) {
            BiometricAuthentication._instance = BiometricAuthentication.init();
        }
        return BiometricAuthentication._instance!;
    }
    
    
    
    func authenticate(authentication : @escaping (Bool) -> ()) {
        
        // Get a fresh context for each login. If you use the same context on multiple attempts
        //  (by commenting out the next line), then a previously successful authentication
        //  causes the next policy evaluation to succeed without testing biometry again.
        //  That's usually not what you want.
        let context = LAContext()
        
        context.localizedCancelTitle = "Cancel"
        
        // First check if we have the needed hardware support.
        var error: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) {
            
            let reason = "to access app"
            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason ) { success, error in
                
                if success {
                    
                    print("Success")
                    authentication(true)
                    
                } else {
                    print(error?.localizedDescription ?? "Failed to authenticate")
                     authentication(false)
                }
            }
        } else {
            authentication(false)
            print(error?.localizedDescription ?? "Can't evaluate policy")
            
        }
    }
}



// Below methed to use Biometric Authentication

/*
 func checkForBiometricAuthentication() {
    BiometricAuthentication.getSingleton().authenticate( authentication: {(authenticationResult) -> Void in
        
        print("authenticationResult :::",authenticationResult)
       
        
        if authenticationResult {
           print("Success")
        }
    })
    
}
*/


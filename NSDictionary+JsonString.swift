//
//  NSDictionary+JsonDictionary.h
//  GeekGuns
//
//  Created by GeekGuns Developer on 31/01/18.
//  Copyright © 2018 GeekGuns. All rights reserved.
//  Free to use


import Foundation
import Swift



extension NSDictionary {
    
    func toJSonString(data : NSDictionary) -> String {
        
        var jsonString = "";
        
        do {
            
            let jsonData = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
            jsonString = NSString(data: jsonData, encoding: String.Encoding.utf8.rawValue)! as String
            
        } catch {
            print(error.localizedDescription)
        }
        
        return jsonString;
    }
    
}

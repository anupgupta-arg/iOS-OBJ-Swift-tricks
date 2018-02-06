//
//  NSDictionary+JsonDictionary.h
//  GeekGuns
//
//  Created by GeekGuns Developer on 31/01/18.
//  Copyright © 2018 GeekGuns. All rights reserved.
//  Free to use

#import <Foundation/Foundation.h>

@interface NSDictionary (JsonDictionary)
- (NSMutableDictionary *)removeNullFromDictionary;
@end

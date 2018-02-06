//
//  NSDictionary+JsonDictionary.h
//  GeekGuns
//
//  Created by GeekGuns Developer on 31/01/18.
//  Copyright © 2018 GeekGuns. All rights reserved.
//  Free to use

#import "NSDictionary+JsonDictionary.h"

@implementation NSDictionary (JsonDictionary)

- (NSMutableDictionary *)removeNullFromDictionary{
    
    NSDictionary * dict = self;
    NSMutableDictionary *mutableDict = [dict mutableCopy];
//    NSLog(@"self.parsedDict::: %@",dict);
    
    for (NSString * key in [dict allKeys])
    {
        if ([[mutableDict objectForKey:key] isKindOfClass:[NSNull class]])
            [mutableDict setObject:@"" forKey:key];
    }
//        NSLog(@"mydic::: %@",mutableDict);
    
    return mutableDict;
}
@end

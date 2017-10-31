//
//  NSDictionary+LJCategory.h
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/31.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (LJCategory)

#pragma mark - ------------------ SafeValue ---------------------
- (id)safeIdValueForKey:(NSString *)key;

- (NSDictionary *)safeDictionaryValueForKey:(NSString *)key;

- (NSArray *)safeArrayValueForKey:(NSString *)key;

- (NSString *)safeStringValueForKey:(NSString *)key;

- (NSInteger)safeIntegerValueForKey:(NSString *)key;

- (double)safeDoubleValueForKey:(NSString *)key;

- (BOOL)safeBoolValueForKey:(NSString *)key;
@end

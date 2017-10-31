//
//  NSDictionary+LJCategory.m
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/31.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import "NSDictionary+LJCategory.h"

@implementation NSDictionary (LJCategory)
- (id)safeIdValueForKey:(NSString *)key {
    if (!key.length) {
        return nil;
    }
    if (![[self objectForKey:key] isKindOfClass:[NSNull class]]) {
        return [self objectForKey:key];
    } else {
        return nil;
    }
}
- (NSDictionary *)safeDictionaryValueForKey:(NSString *)key {
    if ([[self safeIdValueForKey:key] isKindOfClass:[NSDictionary class]]) {
        return [self safeIdValueForKey:key];
    } else {
        return nil;
    }
}
- (NSArray *)safeArrayValueForKey:(NSString *)key {
    if ([[self safeIdValueForKey:key] isKindOfClass:[NSArray class]]) {
        return [self safeIdValueForKey:key];
    } else {
        return nil;
    }
}
- (NSString *)safeStringValueForKey:(NSString *)key {
    if ([[self safeIdValueForKey:key] isKindOfClass:[NSString class]]) {
        return [self safeIdValueForKey:key];
    } else {
        return nil;
    }
}

- (NSInteger)safeIntegerValueForKey:(NSString *)key {
    if ([[self safeIdValueForKey:key] isKindOfClass:[NSString class]] || [[self safeIdValueForKey:key] isKindOfClass:[NSNumber class]]) {
        return [[self safeIdValueForKey:key] integerValue];
    } else {
        return 0;
    }
}

- (double)safeDoubleValueForKey:(NSString *)key {
    if ([[self safeIdValueForKey:key] isKindOfClass:[NSString class]] || [[self safeIdValueForKey:key] isKindOfClass:[NSNumber class]]) {
        return [[self safeIdValueForKey:key] doubleValue];
    } else {
        return 0.0f;
    }
}

- (BOOL)safeBoolValueForKey:(NSString *)key {
    return !![self safeDoubleValueForKey:key];
}
@end

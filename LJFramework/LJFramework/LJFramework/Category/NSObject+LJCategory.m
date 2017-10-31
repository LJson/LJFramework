//
//  NSObject+LJCategory.m
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/31.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import "NSObject+LJCategory.h"
#import <objc/runtime.h>
@implementation NSObject (LJCategory)
+ (void)swizzleMethodWithOriginalMethod:(SEL)originalSelector swizzledMethod:(SEL)swizzledSelector {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL didAddMethod =
        class_addMethod(class,originalSelector,method_getImplementation(swizzledMethod),method_getTypeEncoding(swizzledMethod));
        if (didAddMethod) {
            class_replaceMethod(class,swizzledSelector,method_getImplementation(originalMethod),method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}
@end

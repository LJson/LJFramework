//
//  NSObject+LJCategory.h
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/31.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LJCategory)

+ (void)swizzleMethodWithOriginalMethod:(SEL)originalSelector swizzledMethod:(SEL)swizzledSelector;

@end

//
//  NSString+LJCategory.h
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/31.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LJCategory)
/**
 *  爬取url中的参数
 */
- (NSDictionary *)parseParameters;

/**
 *  去掉字符串两端空格
 */
- (instancetype)trimString;
@end

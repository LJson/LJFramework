//
//  NSString+LJCategory.m
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/31.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import "NSString+LJCategory.h"

@implementation NSString (LJCategory)
/**
 *  爬取url中的参数
 */
- (NSDictionary *)parseParameters {
    NSRange range = [self rangeOfString:@"?"];
    if (range.location != NSNotFound) {
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSString *parameterUrl = [self substringFromIndex:range.location + 1];
        NSArray *parameterArr = [parameterUrl componentsSeparatedByString:@"&"];
        for (NSString *parameter in parameterArr) {
            NSArray *parameterBoby = [parameter componentsSeparatedByString:@"="];
            if (parameterBoby.count == 2) {
                [dic setObject:parameterBoby[1] forKey:parameterBoby[0]];
            }
        }
        return dic;
    }
    return nil;
}

/**
 *  去掉字符串两端空格
 */
- (instancetype)trimString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
@end

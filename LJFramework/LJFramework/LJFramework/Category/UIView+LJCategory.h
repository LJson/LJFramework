//
//  UIView+LJCategory.h
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/27.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LJCategory)
@property (nonatomic, assign) CGFloat lj_x;
@property (nonatomic, assign) CGFloat lj_y;
@property (nonatomic, assign) CGFloat lj_width;
@property (nonatomic, assign) CGFloat lj_height;
@property (nonatomic, assign) CGSize lj_size;
@property (nonatomic, assign) CGFloat lj_centerX;
@property (nonatomic, assign) CGFloat lj_centerY;
@property (readonly, nonatomic) CGFloat lj_maxX;   //右边界距离屏幕左边框
@property (readonly, nonatomic) CGFloat lj_maxY;   //下边界距离屏幕上边框
@end

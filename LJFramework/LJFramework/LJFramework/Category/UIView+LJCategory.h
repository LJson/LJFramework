//
//  UIView+LJCategory.h
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/27.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LJCategory)

#pragma mark - ------------------ Frame ---------------------
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (readonly, nonatomic) CGFloat maxX;
@property (readonly, nonatomic) CGFloat maxY;

#pragma mark - ------------------ Border ---------------------
@property (nonatomic, assign) CGFloat borderWidth;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, strong) UIColor *borderColor;
/**
 *  设置边框(边框宽度/圆角半径/边框颜色)
 */
- (void)setBorderWithBorderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius borderColor:(UIColor *)borderColor;
/**
 *  设置为圆形(非正方形时取长宽较小值的一半)
 */
- (void)setCircle;
/**
 *  清除边框
 */
- (void)cleaerBorder;

#pragma mark - ------------------ ParentController ---------------------
/**
 *  view所在控制器
 */
- (UIViewController *)parentController;

@end

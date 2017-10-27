//
//  UIView+LJCategory.m
//  LJFramework
//
//  Created by 刘俊超 on 2017/10/27.
//  Copyright © 2017年 Ljson. All rights reserved.
//

#import "UIView+LJCategory.h"

@implementation UIView (LJCategory)

- (void)setLj_x:(CGFloat)lj_x {
    CGRect frame = self.frame;
    frame.origin.x = lj_x;
    self.frame = frame;
}

- (CGFloat)lj_x {
    return self.frame.origin.x;
}

- (void)setLj_y:(CGFloat)lj_y {
    CGRect frame = self.frame;
    frame.origin.y = lj_y;
    self.frame = frame;
}

- (CGFloat)lj_y {
    return self.frame.origin.y;
}

- (void)setLj_width:(CGFloat)lj_width {
    CGRect frame = self.frame;
    frame.size.width = lj_width;
    self.frame = frame;
}

- (CGFloat)lj_width {
    return self.frame.size.width;
}
- (void)setLj_height:(CGFloat)lj_height {
    CGRect frame = self.frame;
    frame.size.height = lj_height;
    self.frame = frame;
}

- (CGFloat)lj_height {
    return self.frame.size.height;
}
- (void)setLj_centerX:(CGFloat)lj_centerX {
    CGPoint point = self.center;
    point.x = lj_centerX;
    self.center = point;
}

- (CGFloat)lj_centerX {
    return self.center.x;
}

- (void)setLj_centerY:(CGFloat)lj_centerY {
    CGPoint point = self.center;
    point.y = lj_centerY;
    self.center = point;
}

- (CGFloat)lj_centerY {
    return self.center.y;
}
- (void)setLj_size:(CGSize)lj_size {
    CGRect frame = self.frame;
    frame.size = lj_size;
    self.frame = frame;
}

- (CGSize)lj_size {
    return self.frame.size;
}
- (CGFloat)lj_maxX {
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)lj_maxY {
    return CGRectGetMaxY(self.frame);
}
@end

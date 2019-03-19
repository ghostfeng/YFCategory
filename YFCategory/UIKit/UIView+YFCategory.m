//
//  UIView+YFCategory.m
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2017/8/15.
//  Copyright © 2017年 Witgo. All rights reserved.
//

#import "UIView+YFCategory.h"

@implementation UIView (YFCategory)

#pragma mark - properties

- (void)setYf_cornerRadius:(CGFloat)yf_cornerRadius {
    self.layer.cornerRadius = yf_cornerRadius;
    self.layer.masksToBounds = yf_cornerRadius > 0;
}

- (CGFloat)yf_cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setYf_borderWidth:(CGFloat)yf_borderWidth {
    self.layer.borderWidth = yf_borderWidth;
}

- (CGFloat)yf_borderWidth {
    return self.layer.borderWidth;
}

- (void)setYf_borderColor:(UIColor *)yf_borderColor {
    self.layer.borderColor = yf_borderColor.CGColor;
}

- (UIColor *)yf_borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setYf_x:(CGFloat)yf_x {
    CGRect newFrame = self.frame;
    newFrame.origin.x = yf_x;
    self.frame = newFrame;
}

- (CGFloat)yf_x {
    return self.frame.origin.x;
}

- (void)setYf_y:(CGFloat)yf_y {
    CGRect newFrame = self.frame;
    newFrame.origin.y = yf_y;
    self.frame = newFrame;
}

- (CGFloat)yf_y {
    return self.frame.origin.y;
}

- (void)setYf_w:(CGFloat)yf_w {
    CGRect newFrame = self.frame;
    newFrame.size.width = yf_w;
    self.frame = newFrame;
}

- (CGFloat)yf_w {
    return self.frame.size.width;
}

- (void)setYf_h:(CGFloat)yf_h {
    CGRect newFrame = self.frame;
    newFrame.size.height = yf_h;
    self.frame = newFrame;
}

- (CGFloat)yf_h {
    return self.frame.size.height;
}

- (void)setYf_centerX:(CGFloat)yf_centerX {
    CGRect newFrame = self.frame;
    newFrame.origin.x = yf_centerX - newFrame.size.width / 2.0;
    self.frame = newFrame;
}

- (CGFloat)yf_centerX {
    return self.center.x;
}

- (void)setYf_centerY:(CGFloat)yf_centerY {
    CGRect newFrame = self.frame;
    newFrame.origin.y = yf_centerY - newFrame.size.height / 2.0;
    self.frame = newFrame;
}

- (CGFloat)yf_centerY {
    return self.center.y;
}

- (void)setYf_top:(CGFloat)yf_top {
    CGRect newFrame = self.frame;
    newFrame.origin.y = yf_top;
    self.frame = newFrame;
}

- (CGFloat)yf_top {
    return self.frame.origin.y;
}

- (void)setYf_bottom:(CGFloat)yf_bottom {
    CGRect newFrame = self.frame;
    newFrame.origin.y = yf_bottom - newFrame.size.height;
    self.frame = newFrame;
}

- (CGFloat)yf_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setYf_left:(CGFloat)yf_left {
    CGRect newFrame = self.frame;
    newFrame.origin.x = yf_left;
    self.frame = newFrame;
}

- (CGFloat)yf_left {
    return self.frame.origin.x;
}

- (void)setYf_right:(CGFloat)yf_right {
    CGRect newFrame = self.frame;
    newFrame.origin.x = yf_right - newFrame.size.width;
    self.frame = newFrame;
}

- (CGFloat)yf_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setYf_origin:(CGPoint)yf_origin {
    CGRect newFrame = self.frame;
    newFrame.origin = yf_origin;
    self.frame = newFrame;
}

- (CGPoint)yf_origin {
    return self.frame.origin;
}

- (void)setYf_size:(CGSize)yf_size {
    CGRect newFrame = self.frame;
    newFrame.size = yf_size;
    self.frame = newFrame;
}

- (CGSize)yf_size {
    return self.frame.size;
}

#pragma mark - methods

/**
 从xib初始化view
 
 @return view
 */
+ (instancetype)yf_viewFromXib {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

/**
 通过响应者链获取当前视图所在的控制器
 
 @return 控制器
 */
- (UIViewController *)yf_viewController {
    UIResponder *next = self.nextResponder;
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = next.nextResponder;
    } while (next != nil);
    return nil;
}

/**
 对视图进行裁剪
 
 @param radius 裁剪半径
 */
- (void)yf_cornerWithRadius:(CGFloat)radius {
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = radius > 0;
}

/**
 移除所有的子视图
 */
- (void)yf_removeAllSubviews {
    for (UIView *subView in self.subviews) {
        [subView removeFromSuperview];
    }
}

@end

//
//  UINavigationBar+YFCategory.m
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/4/26.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import "UINavigationBar+YFCategory.h"
#import <objc/runtime.h>

static char kBackgroundViewKey;

@implementation UINavigationBar (YFCategory)

- (void)setYf_backgroundView:(UIView *)yf_backgroundView {
    objc_setAssociatedObject(self, &kBackgroundViewKey, yf_backgroundView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)yf_backgroundView {
    return objc_getAssociatedObject(self, &kBackgroundViewKey);
}

/**
 设置背景色
 
 @param backgroundColor 颜色
 */
- (void)yf_setBackgroundColor:(UIColor *)backgroundColor {
    self.translucent = true;
    if (!self.yf_backgroundView) {
        CGFloat top = self.statusBarHeight;
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        self.yf_backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, -top, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds) + top)];
        self.yf_backgroundView.userInteractionEnabled = NO;
        self.yf_backgroundView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        [self insertSubview:self.yf_backgroundView atIndex:0];
    }
    self.yf_backgroundView.backgroundColor = backgroundColor;
    self.yf_backgroundView.layer.zPosition = -1;
}

/**
 状态栏高度
 
 @return 状态栏高度
 */
- (CGFloat)statusBarHeight {
    if (UIScreen.mainScreen.bounds.size.height >= 812) {
        return 44;
    }
    return 20;
}

@end

//
//  UINavigationBar+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/4/26.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationBar (YFCategory)

/** 背景View */
@property (nonatomic, strong) UIView *yf_backgroundView;

/**
 设置背景色
 
 @param backgroundColor 颜色
 */
- (void)yf_setBackgroundColor:(UIColor *)backgroundColor;

@end

NS_ASSUME_NONNULL_END

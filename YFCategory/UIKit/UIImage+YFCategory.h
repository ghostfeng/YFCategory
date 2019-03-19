//
//  UIImage+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (YFCategory)

/**
 通过颜色创建图片
 
 @param color 颜色
 @param size 大小
 @return 图片
 */
+ (UIImage *)yf_imageWithColor:(UIColor *)color
                          size:(CGSize)size;

/**
 通过颜色创建图片
 
 @param color 颜色
 @return 图片
 */
+ (UIImage *)yf_imageWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END

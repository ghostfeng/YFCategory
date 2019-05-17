//
//  UIImage+YFCategory.m
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import "UIImage+YFCategory.h"

@implementation UIImage (YFCategory)

/**
 通过颜色创建图片
 
 @param color 颜色
 @param size 大小
 @return 图片
 */
+ (UIImage *)yf_imageWithColor:(UIColor *)color
                          size:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 通过颜色创建图片
 
 @param color 颜色
 @return 图片
 */
+ (UIImage *)yf_imageWithColor:(UIColor *)color {
    return [self yf_imageWithColor:color size:CGSizeMake(1, 1)];
}


@end

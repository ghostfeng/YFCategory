//
//  UIColor+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (YFCategory)

/**
 根据十六进制配色值创建颜色对象
 
 @param hex 十六进制
 @return 颜色对象
 */
+ (UIColor *)yf_colorWithRGBHex:(UInt32)hex;

/**
 根据十六进制配色值字符串创建颜色对象
 
 @param hexString 十六进制字符串
 @return 颜色对象
 */
+ (UIColor *)yf_colorWithRGBHexString:(NSString *)hexString;

@end

NS_ASSUME_NONNULL_END

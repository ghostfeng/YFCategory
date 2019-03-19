//
//  UIColor+YFCategory.m
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import "UIColor+YFCategory.h"

@implementation UIColor (YFCategory)

/**
 根据十六进制配色值创建颜色对象
 
 @param hex 十六进制
 @return 颜色对象
 */
+ (UIColor *)yf_colorWithRGBHex:(UInt32)hex {
    UInt32 r = (hex >> 16) & 0xFF;
    UInt32 g = (hex >> 8) & 0xFF;
    UInt32 b = (hex) & 0xFF;
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

/**
 根据十六进制配色值字符串创建颜色对象
 
 @param hexString 十六进制字符串
 @return 颜色对象
 */
+ (UIColor *)yf_colorWithRGBHexString:(NSString *)hexString {
    NSString *cString = [hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([cString hasPrefix:@"0X"] || [cString hasPrefix:@"0x"]) {
        cString = [cString substringFromIndex:2];
    }
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6) {
        return [UIColor clearColor];
    }
    NSScanner *scanner = [NSScanner scannerWithString:cString];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) {
        return [UIColor clearColor];
    }
    return [UIColor yf_colorWithRGBHex:hexNum];
}

@end

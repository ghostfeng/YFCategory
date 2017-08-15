//
//  UIDevice+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2017/8/15.
//  Copyright © 2017年 Witgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (YFCategory)

#pragma mark - methods
/**
 获取设备唯一标识
 
 @return 设备唯一标识字符串
 */
+(NSString *)yf_identifierForVendor;

/**
 操作系统版本号
 
 @return 操作系统版本号
 */
+(NSString *)yf_osVersion;

/**
 设备的型号
 
 @return 设备的型号
 */
+ (NSString *)yf_unameMachine;

@end

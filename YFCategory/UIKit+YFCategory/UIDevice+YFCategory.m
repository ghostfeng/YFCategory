//
//  UIDevice+YFCategory.m
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2017/8/15.
//  Copyright © 2017年 Witgo. All rights reserved.
//

#import "UIDevice+YFCategory.h"
#import "sys/utsname.h"

@implementation UIDevice (YFCategory)

/**
 获取设备唯一标识
 
 @return 设备唯一标识字符串
 */
+(NSString *)yf_identifierForVendor {
    return UIDevice.currentDevice.identifierForVendor.UUIDString;
}

/**
 操作系统版本号
 
 @return 操作系统版本号
 */
+(NSString *)yf_osVersion {
    return [NSString stringWithFormat:@"%@ %@",[self currentDevice].systemName,[self currentDevice].systemVersion];
}

/**
 设备的型号
 
 @return 设备的型号
 */
+ (NSString *)yf_unameMachine {
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine
                              encoding:NSUTF8StringEncoding];
}
@end

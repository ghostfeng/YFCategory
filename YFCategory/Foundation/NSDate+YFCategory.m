//
//  NSDate+YFCategory.m
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 Witgo. All rights reserved.
//

#import "NSDate+YFCategory.h"

@implementation NSDate (YFCategory)

/**
 将对应格式的时间字符串转化成时间对象

 @param dateString 时间字符串
 @param formatterString 格式化字符串
 @return 格式化之后的时间
 */
+ (NSDate *)yf_dateWithString:(NSString *)dateString
              formatterString:(NSString *)formatterString {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:formatterString];
    return [formatter dateFromString:dateString];
}

@end

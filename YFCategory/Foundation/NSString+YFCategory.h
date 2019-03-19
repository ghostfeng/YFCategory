//
//  NSString+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (YFCategory)

#pragma mark - 格式化
/**
 将默认日期字符串转化成对应格式的字符串
 
 @param dateString 默认日期字符串（yyyy-MM-dd HH:mm:ss）
 @param formatterString 格式化字符串
 @return 格式化之后的时间字符串
 */
+ (NSString *)yf_stringWithDefaultDateString:(NSString *)dateString
                             formatterString:(NSString *)formatterString;

/**
 将日期对象转化成对应格式的字符串
 
 @param date 日期
 @param formatterString 格式化字符串
 @return 格式化之后的时间字符串
 */
+ (NSString *)yf_stringWithDate:(NSDate *)date
                formatterString:(NSString *)formatterString;

/**
 将日期时间戳转化成对应格式的字符串
 
 @param timeInterval 日期时间戳
 @param formatterString 格式字符串
 @return 对应格式的时间字符串
 */
+ (NSString *)yf_stringWithTimeInterval:(NSTimeInterval)timeInterval
                        formatterString:(NSString *)formatterString;

#pragma mark - 处理
/**
 移除null
 
 @param obj obj description
 @return return value description
 */
+ (NSString *)yf_removeNull:(id)obj;

@end

NS_ASSUME_NONNULL_END

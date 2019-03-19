//
//  NSDate+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 Witgo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (YFCategory)

/**
 将对应格式的时间字符串转化成时间对象
 
 @param dateString 时间字符串
 @param formatterString 格式化字符串
 @return 格式化之后的时间
 */
+ (NSDate *)yf_dateWithString:(NSString *)dateString
              formatterString:(NSString *)formatterString;

@end

NS_ASSUME_NONNULL_END

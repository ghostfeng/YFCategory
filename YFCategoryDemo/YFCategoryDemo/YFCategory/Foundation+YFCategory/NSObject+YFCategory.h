//
//  NSObject+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2017/8/15.
//  Copyright © 2017年 Witgo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (YFCategory)

#pragma mark - methods
/**
 运行时交换实例方法
 
 @param method1 method1
 @param method2 method2
 */
+ (void)yf_exchangeInstanceMethod1:(SEL)method1 method2:(SEL)method2;

/**
 运行时交换类方法
 
 @param method1 method1
 @param method2 method2
 */
+ (void)yf_exchangeClassMethod1:(SEL)method1 method2:(SEL)method2;

@end

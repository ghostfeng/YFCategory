//
//  NSObject+YFCategory.m
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2017/8/15.
//  Copyright © 2017年 Witgo. All rights reserved.
//

#import "NSObject+YFCategory.h"
#import <objc/runtime.h>

@implementation NSObject (YFCategory)

+ (void)yf_exchangeInstanceMethod1:(SEL)method1 method2:(SEL)method2 {
    method_exchangeImplementations(class_getInstanceMethod(self, method1), class_getInstanceMethod(self, method2));
}

+ (void)yf_exchangeClassMethod1:(SEL)method1 method2:(SEL)method2 {
    method_exchangeImplementations(class_getClassMethod(self, method1), class_getClassMethod(self, method2));
}

@end

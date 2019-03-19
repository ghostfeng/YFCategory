//
//  UIView+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2017/8/15.
//  Copyright © 2017年 Witgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YFCategory)

/** 裁剪半径 */
@property (nonatomic,assign) IBInspectable CGFloat yf_cornerRadius;
/** 边缘线宽度 */
@property (nonatomic,assign) IBInspectable CGFloat yf_borderWidth;
/** 边缘线颜色 */
@property (nonatomic,strong) IBInspectable UIColor *yf_borderColor;
/** x坐标 */
@property (nonatomic, assign) CGFloat yf_x;
/** y坐标 */
@property (nonatomic, assign) CGFloat yf_y;
/** 宽 */
@property (nonatomic, assign) CGFloat yf_w;
/** 高 */
@property (nonatomic, assign) CGFloat yf_h;
/** 中心点的x坐标 */
@property (nonatomic, assign) CGFloat yf_centerX;
/** 中心点的y坐标 */
@property (nonatomic, assign) CGFloat yf_centerY;
/** 上 */
@property (nonatomic, assign) CGFloat yf_top;
/** 下 */
@property (nonatomic, assign) CGFloat yf_bottom;
/** 左 */
@property (nonatomic, assign) CGFloat yf_left;
/** 右 */
@property (nonatomic, assign) CGFloat yf_right;
/** 起点坐标 */
@property (nonatomic, assign) CGPoint yf_origin;
/** 大小 */
@property (nonatomic, assign) CGSize yf_size;


#pragma mark - methods

/**
 从xib初始化view

 @return view
 */
+ (instancetype)yf_viewFromXib;

/**
 通过响应者链获取当前视图所在的控制器

 @return 控制器
 */
- (UIViewController *)yf_viewController;

/**
 对视图进行裁剪

 @param radius 裁剪半径
 */
- (void)yf_cornerWithRadius:(CGFloat)radius;

/**
 移除所有的子视图
 */
- (void)yf_removeAllSubviews;

@end

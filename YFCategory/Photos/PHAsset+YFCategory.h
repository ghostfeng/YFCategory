//
//  PHAsset+YFCategory.h
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface PHAsset (YFCategory)

/**
 是否是视频
 
 @return YES：是 NO：否
 */
- (BOOL)yf_isVideo;

/**
 是否是Gif图片
 
 @return YES：是 NO：否
 */
- (BOOL)yf_isGif;

/**
 获取原图片
 
 @param completionHandler 回调
 */
- (void)yf_requestOriginalImageCompletionHandler:(void (^)(UIImage *image, NSDictionary *info))completionHandler;

/**
 获取原图片数据
 
 @param completionHandler 回调
 */
- (void)yf_requestOriginalImageDataCompletionHandler:(void(^)(NSData *imageData, NSString *dataUTI, UIImageOrientation orientation, NSDictionary *info))completionHandler;

/**
 获取原视频数据
 
 @param completionHandler 回调
 */
- (void)yf_requestOriginalVideoDataCompletionHandler:(void(^)(AVURLAsset *urlAsset, NSData *videoData,NSDictionary *info))completionHandler;

@end

NS_ASSUME_NONNULL_END

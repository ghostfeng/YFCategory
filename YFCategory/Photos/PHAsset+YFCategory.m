//
//  PHAsset+YFCategory.m
//  YFCategoryDemo
//
//  Created by 刘永峰 on 2019/3/19.
//  Copyright © 2019 刘永峰. All rights reserved.
//

#import "PHAsset+YFCategory.h"

@implementation PHAsset (YFCategory)

/**
 是否是视频
 
 @return YES：是 NO：否
 */
- (BOOL)yf_isVideo {
    return (self.mediaType == PHAssetMediaTypeVideo);
}

/**
 是否是Gif图片
 
 @return YES：是 NO：否
 */
- (BOOL)yf_isGif {
    return [[(NSString *)[self valueForKey:@"uniformTypeIdentifier"] lowercaseString] containsString:@"gif"];
}

/**
 获取原图片
 
 @param completionHandler 回调
 */
- (void)yf_requestOriginalImageCompletionHandler:(void (^)(UIImage *image, NSDictionary *info))completionHandler {
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    options.deliveryMode = PHImageRequestOptionsDeliveryModeFastFormat;
    options.synchronous = NO;
    options.networkAccessAllowed = YES;
    [PHImageManager.defaultManager requestImageForAsset:self targetSize:PHImageManagerMaximumSize contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        if (completionHandler) {
            completionHandler(result, info);
        }
    }];
}

/**
 获取原图片数据
 
 @param completionHandler 回调
 */
- (void)yf_requestOriginalImageDataCompletionHandler:(void(^)(NSData *imageData, NSString *dataUTI, UIImageOrientation orientation, NSDictionary *info))completionHandler {
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    options.version = PHImageRequestOptionsVersionCurrent;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.synchronous = NO;
    options.networkAccessAllowed = YES;
    [PHImageManager.defaultManager requestImageDataForAsset:self options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        if (completionHandler) {
            completionHandler(imageData, dataUTI, orientation, info);
        }
    }];
}

/**
 获取原视频数据
 
 @param completionHandler 回调
 */
- (void)yf_requestOriginalVideoDataCompletionHandler:(void(^)(AVURLAsset *urlAsset, NSData *videoData,NSDictionary *info))completionHandler {
    PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    options.version = PHImageRequestOptionsVersionCurrent;
    options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    [PHImageManager.defaultManager requestAVAssetForVideo:self options:options resultHandler:^(AVAsset * _Nullable asset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
        AVURLAsset *urlAsset = (AVURLAsset *)asset;
        NSURL *url = urlAsset.URL;
        NSData *videoData = [NSData dataWithContentsOfURL:url];
        if (completionHandler) {
            completionHandler(urlAsset, videoData, info);
        }
    }];
}


@end

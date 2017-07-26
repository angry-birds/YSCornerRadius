//
//  UIImage+CornerRadius.h
//  LayerCornerDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 YuanMedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CornerRadius)

- (UIImage *)ys_imageByRoundCornerRadius:(CGFloat)radius;

- (UIImage *)ys_imageByRoundCornerRadius:(CGFloat)radius
                             borderWidth:(CGFloat)borderWidth
                             borderColor:(UIColor *)borderColor;

- (UIImage *)ys_imageByRoundCornerRadius:(CGFloat)radius
                                 corners:(UIRectCorner)corners
                             borderWidth:(CGFloat)borderWidth
                             borderColor:(UIColor *)borderColor;

- (UIImage *)ys_imageByResizeToSize:(CGSize)size;

+ (UIImage *)ys_imageWithColor:(UIColor *)color;

+ (UIImage *)ys_imageWithColor:(UIColor *)color size:(CGSize)size;

@end

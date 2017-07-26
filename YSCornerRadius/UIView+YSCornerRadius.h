//
//  UIView+CornerRadius.h
//  LayerCornerDemo
//
//  Created by angrybirds on 2017/7/12.
//  Copyright © 2017年 YuanMedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YSCornerRadius)

- (void)ys_setCornerWithRadius:(CGFloat)radius;

- (void)ys_setCornerWithRadius:(CGFloat)radius
                   borderWidth:(CGFloat)borderWidth
                   borderColor:(UIColor *)borderColor;

- (void)ys_setCornerWithRadius:(CGFloat)radius
                   borderWidth:(CGFloat)borderWidth
                   borderColor:(UIColor *)borderColor
                     fillColor:(UIColor *)fillColor;


- (void)ys_setCornerWithRoundingCorners:(UIRectCorner)corner
                                 radius:(CGFloat)radius;

- (void)ys_setCornerWithRoundingCorners:(UIRectCorner)corner
                                 radius:(CGFloat)radius
                            borderWidth:(CGFloat)borderWidth
                            borderColor:(UIColor *)borderColor;

- (void)ys_setCornerWithRoundingCorners:(UIRectCorner)corner
                                 radius:(CGFloat)radius
                            borderWidth:(CGFloat)borderWidth
                            borderColor:(UIColor *)borderColor
                              fillColor:(UIColor *)fillColor;


@end

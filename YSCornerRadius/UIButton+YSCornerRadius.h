//
//  UIButton+CornerRadius.h
//  LayerCornerDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 YuanMedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (YSCornerRadius)

- (void)ys_setButtonCornerWithRoundingCorners:(UIRectCorner)corner
                                       radius:(CGFloat)radius
                                  borderWidth:(CGFloat)borderWidth
                                  borderColor:(UIColor *)borderColor
                                    fillColor:(UIColor *)fillColor;

@end

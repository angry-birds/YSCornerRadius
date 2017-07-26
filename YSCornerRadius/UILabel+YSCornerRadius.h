//
//  UILabel+YSCornerRadius.h
//  LayerCornerDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 YuanMedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (YSCornerRadius)

- (void)ys_setLabelCornerWithRoundingCorners:(UIRectCorner)corner
                                       radius:(CGFloat)radius
                                  borderWidth:(CGFloat)borderWidth
                                  borderColor:(UIColor *)borderColor
                                    fillColor:(UIColor *)fillColor;

@end

//
//  UILabel+YSCornerRadius.m
//  LayerCornerDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 YuanMedia. All rights reserved.
//

#import "UILabel+YSCornerRadius.h"
#import "UIImage+YSCornerRadius.h"

@implementation UILabel (YSCornerRadius)

- (void)ys_setLabelCornerWithRoundingCorners:(UIRectCorner)corner
                                      radius:(CGFloat)radius
                                 borderWidth:(CGFloat)borderWidth
                                 borderColor:(UIColor *)borderColor
                                   fillColor:(UIColor *)fillColor{
    
    UIImage *image = [UIImage ys_imageWithColor:fillColor size:self.frame.size];
    image = [image ys_imageByRoundCornerRadius:radius corners:corner borderWidth:borderWidth borderColor:borderColor];
    self.layer.backgroundColor = [UIColor colorWithPatternImage:image].CGColor;
}

@end

//
//  UIButton+CornerRadius.m
//  LayerCornerDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 YuanMedia. All rights reserved.
//

#import "UIButton+YSCornerRadius.h"
#import "UIImage+YSCornerRadius.h"

@implementation UIButton (YSCornerRadius)

- (void)ys_setButtonCornerWithRoundingCorners:(UIRectCorner)corner
                                       radius:(CGFloat)radius
                                  borderWidth:(CGFloat)borderWidth
                                  borderColor:(UIColor *)borderColor
                                    fillColor:(UIColor *)fillColor{
    
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
    UIImage * image = self.imageView.image;
    if (!image) {
        image = self.currentBackgroundImage;
    }
    
    if (!image) {
        image = [UIImage ys_imageWithColor:fillColor size:self.bounds.size];
    }
    
    image = [image ys_imageByResizeToSize:self.frame.size];
    
    image = [image ys_imageByRoundCornerRadius:radius corners:corner borderWidth:borderWidth borderColor:borderColor];
    
        [self setImage:nil forState:UIControlStateNormal];
        [self setBackgroundImage:nil forState:UIControlStateNormal];
        [self setBackgroundImage:image forState:UIControlStateNormal];
    });
}




@end

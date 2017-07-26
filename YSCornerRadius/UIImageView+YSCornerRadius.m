//
//  UIImageView+CornerRadius.m
//  LayerCornerDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 YuanMedia. All rights reserved.
//

#import "UIImageView+YSCornerRadius.h"
#import "UIImage+YSCornerRadius.h"

@implementation UIImageView (YSCornerRadius)

- (void)ys_setImageCornerWithRoundingCorners:(UIRectCorner)corner
                                      radius:(CGFloat)radius
                                 borderWidth:(CGFloat)borderWidth
                                 borderColor:(UIColor *)borderColor
                                   fillColor:(UIColor *)fillColor{
    
    UIImage *image = self.image;
    if (!image) {
        image = [UIImage ys_imageWithColor:fillColor size:self.frame.size];
    }
    
    image = [image ys_imageByResizeToSize:self.frame.size];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        self.image = [image ys_imageByRoundCornerRadius:radius corners:corner borderWidth:borderWidth borderColor:borderColor];
        
    });
}



@end

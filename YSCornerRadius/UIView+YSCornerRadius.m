//
//  UIView+CornerRadius.m
//  LayerCornerDemo
//
//  Created by angrybirds on 2017/7/12.
//  Copyright © 2017年 YuanMedia. All rights reserved.
//

#import "UIView+YSCornerRadius.h"
#import "UIImageView+YSCornerRadius.h"
#import "UIButton+YSCornerRadius.h"
#import "UILabel+YSCornerRadius.h"
#import "UIImage+YSCornerRadius.h"

@implementation UIView (YSCornerRadius)

- (void)ys_setCornerWithRadius:(CGFloat)radius{
    [self ys_setCornerWithRoundingCorners:UIRectCornerAllCorners radius:radius];
}

- (void)ys_setCornerWithRadius:(CGFloat)radius
                   borderWidth:(CGFloat)borderWidth
                   borderColor:(UIColor *)borderColor{
    
    [self ys_setCornerWithRoundingCorners:UIRectCornerAllCorners
                                   radius:radius
                              borderWidth:borderWidth
                              borderColor:borderColor];
}

- (void)ys_setCornerWithRadius:(CGFloat)radius
                   borderWidth:(CGFloat)borderWidth
                   borderColor:(UIColor *)borderColor
                     fillColor:(UIColor *)fillColor{
    
    [self ys_setCornerWithRoundingCorners:UIRectCornerAllCorners
                                   radius:radius
                              borderWidth:borderWidth
                              borderColor:borderColor
                                fillColor:fillColor];
}


- (void)ys_setCornerWithRoundingCorners:(UIRectCorner)corner
                                 radius:(CGFloat)radius{
    
    [self ys_setCornerWithRoundingCorners:corner
                                   radius:radius
                              borderWidth:0
                              borderColor:self.backgroundColor];
}

- (void)ys_setCornerWithRoundingCorners:(UIRectCorner)corner
                                 radius:(CGFloat)radius
                            borderWidth:(CGFloat)borderWidth
                            borderColor:(UIColor *)borderColor{
    
    [self ys_setCornerWithRoundingCorners:corner
                                   radius:radius
                              borderWidth:borderWidth
                              borderColor:borderColor
                                fillColor:self.backgroundColor];
}

- (void)ys_setCornerWithRoundingCorners:(UIRectCorner)corner
                                 radius:(CGFloat)radius
                            borderWidth:(CGFloat)borderWidth
                            borderColor:(UIColor *)borderColor
                              fillColor:(UIColor *)fillColor{
    
    if (!corner) {
        corner = UIRectCornerAllCorners;
    }
    
    if (!borderColor) {
        borderColor = self.backgroundColor;
    }
    if (!fillColor) {
        fillColor = self.backgroundColor ? : [UIColor whiteColor];
    }
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        
        if ([self isKindOfClass:[UIImageView class]]) {
            
            [(UIImageView *)self ys_setImageCornerWithRoundingCorners:corner radius:radius borderWidth:borderWidth borderColor:borderColor fillColor:fillColor];
            
        } else if ([self isKindOfClass:[UIButton class]]){
            
            [(UIButton *)self ys_setButtonCornerWithRoundingCorners:corner radius:radius borderWidth:borderWidth borderColor:borderColor fillColor:fillColor];
            
        }else if ([self isKindOfClass:[UILabel class]]){
            [(UILabel *)self ys_setLabelCornerWithRoundingCorners:corner radius:radius borderWidth:borderWidth borderColor:borderColor fillColor:fillColor];
        }else{
            
            UIImage *image = [UIImage ys_imageWithColor:fillColor size:self.frame.size];
            image = [image ys_imageByRoundCornerRadius:radius corners:corner borderWidth:borderWidth borderColor:borderColor];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.layer.backgroundColor = [UIColor colorWithPatternImage:image].CGColor;
            });
        }
    });
}

@end

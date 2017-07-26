//
//  TableViewCell.m
//  YSCornerRadiusDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 nil. All rights reserved.
//

#import "TableViewCell.h"
#import "UIView+YSCornerRadius.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)loadViews{
    
    dispatch_async(dispatch_get_main_queue(), ^{
       self.label.text = @"label123";
        self.leftImageView.image = [UIImage imageNamed:@"naruto"];
        [self.button setImage:[UIImage imageNamed:@"image"] forState:UIControlStateNormal];
//
        [self.leftImageView ys_setCornerWithRadius:5 borderWidth:0.5 borderColor:[UIColor redColor]];
        [self.button ys_setCornerWithRadius:5 borderWidth:0.5 borderColor:[UIColor redColor]];
        [self.label ys_setCornerWithRadius:5 borderWidth:0.5 borderColor:[UIColor redColor]];
    });
    
}

@end

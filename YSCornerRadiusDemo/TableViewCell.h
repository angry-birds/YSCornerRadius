//
//  TableViewCell.h
//  YSCornerRadiusDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 nil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (void)loadViews;

@end


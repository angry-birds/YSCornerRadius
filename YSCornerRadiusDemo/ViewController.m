//
//  ViewController.m
//  YSCornerRadiusDemo
//
//  Created by angrybirds on 2017/7/26.
//  Copyright © 2017年 nil. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "YYFPSLabel.h"



@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

static NSString *const kIdentifier = @"TableViewCell";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.tableView];
    [self.tableView reloadData];
    
    YYFPSLabel *fps = [YYFPSLabel new];
    fps.center = CGPointMake(40, 80);
    [self.view addSubview:fps];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kIdentifier forIndexPath:indexPath];
    [cell loadViews];
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1000;
}



#pragma mark - EventMethod

- (UITableView *)tableView{
    
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc]init];
        tableView.frame = self.view.frame;
        [tableView registerNib:[UINib nibWithNibName:kIdentifier bundle:nil] forCellReuseIdentifier:kIdentifier];
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.rowHeight = 70;
        _tableView = tableView;
    }
    return _tableView;
}


@end

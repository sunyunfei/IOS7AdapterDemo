//
//  ViewController.m
//  IOS7AdapterDemo
//
//  Created by 孙云 on 15/10/15.
//  Copyright © 2015年 haidai. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   //注册
    [self.tableView registerNib:[UINib  nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark------表的代理方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView fd_heightForCellWithIdentifier:@"TableViewCell" configuration:^(TableViewCell *cell){
    //当单元格有不同的数据的时候，返回每一个单元格加载数据的语句（就和你在创建的时候使用的数据语句一样）以获得相应的高度
    }];
}
@end

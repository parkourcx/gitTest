//
//  ViewController.m
//  tableViewTest
//
//  Created by 陈翔 on 16/7/13.
//  Copyright © 2016年 陈翔. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableV.delegate = self;
    _tableV.dataSource = self;
    // Do any additional setup after loading the view, typically from a nib.
}
//12123123123
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@""];
    cell.textLabel.text = @"abc";
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
    return cell;
}



@end

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
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    l.text = @"点击了";
    v.backgroundColor = [UIColor blueColor];
    [self.tableV addSubview:v];
    [v addSubview:l];
    [UIView animateWithDuration:1 animations:^{
        v.alpha = 0;
        
    } completion:^(BOOL finished) {
        NSLog(@"动画执行完毕");
    }];
    
}



@end

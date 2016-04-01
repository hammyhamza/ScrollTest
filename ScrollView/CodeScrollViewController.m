//
//  CodeScrollViewController.m
//  ScrollView
//
//  Created by Hamza Ansari on 01/04/16.
//  Copyright © 2016 Hamza Ansari. All rights reserved.
//

#import "CodeScrollViewController.h"

@interface CodeScrollViewController ()

@end

@implementation CodeScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    sView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:sView];

    
    CGSize sViewContentSize = CGSizeMake(sView.frame.size.width, 680);
    [sView setContentSize:sViewContentSize];
    
    UIView *contentView = [[UIView alloc]initWithFrame: CGRectMake(0, 0, sViewContentSize.width, sViewContentSize.height)];
    
    CGFloat height = 200;
    
    UILabel *view1 = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, sViewContentSize.width-40, height)];
    view1.textAlignment = NSTextAlignmentCenter;
    view1.text = @"View 1";
    view1.textColor = [UIColor whiteColor];
    view1.backgroundColor = [UIColor greenColor];
    
    UILabel *view2 = [[UILabel alloc]initWithFrame:CGRectMake(20, 240, sViewContentSize.width-40, height)];
    view2.textAlignment = NSTextAlignmentCenter;
    view2.text = @"View 2";
    view2.textColor = [UIColor whiteColor];
    view2.backgroundColor = [UIColor blackColor];
    
    UILabel *view3 = [[UILabel alloc]initWithFrame:CGRectMake(20, 460, sViewContentSize.width-40, height)];
    view3.textAlignment = NSTextAlignmentCenter;
    view3.text = @"View 3";
    view3.textColor = [UIColor whiteColor];
    view3.backgroundColor = [UIColor purpleColor];
    
    [contentView addSubview:view1];
    [contentView addSubview:view2];
    [contentView addSubview:view3];
    
    [sView addSubview:contentView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

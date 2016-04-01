//
//  ScrollViewController.m
//  ScrollView
//
//  Created by Hamza Ansari on 01/04/16.
//  Copyright © 2016 Hamza Ansari. All rights reserved.
//

#import "ScrollViewController.h"
#import "CodeScrollViewController.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *codeButton = [[UIBarButtonItem alloc]initWithTitle:@"Code" style:UIBarButtonItemStylePlain target:self action:@selector(showCodeScrollView:)];
    self.title = @"ScrollView";
    
    self.navigationItem.rightBarButtonItem = codeButton;
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showCodeScrollView:(UIBarButtonItem*)sender{
    
    CodeScrollViewController *codeView = [[CodeScrollViewController alloc]init];
    [self.navigationController pushViewController:codeView animated:YES];
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

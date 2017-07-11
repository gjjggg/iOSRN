//
//  ThreeViewController.m
//  iOS-RN
//
//  Created by 郭洪安 on 2017/7/11.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.title = @"我是原生";
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel * label = [[UILabel alloc]init];
    label.frame = CGRectMake(50, 70, (self.view.frame.size.width-100), 44);
    label.text = @"我又回来了";
    [self.view addSubview:label];
    
}



-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = YES;
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

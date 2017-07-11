//
//  TwoViewController.m
//  iOS-RN
//
//  Created by 郭洪安 on 2017/7/11.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "TwoViewController.h"
#import "ReactView.h"
#import "AppDelegate.h"
#import "ThreeViewController.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = YES;
    
   
    
    //self.navigationItem.title = @"我是包含RN的原生页面哟~";
    ReactView * reactView = [[ReactView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,  self.view.frame.size.height)];
    [self.view addSubview:reactView];
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doPushNotification:) name:@"RNOpenOneVC" object:nil];
}

- (void)doPushNotification:(NSNotification *)notification{
    NSLog(@"成功收到===>通知");
    ThreeViewController *one = [[ThreeViewController alloc]init];

    
    [self.navigationController pushViewController:one animated:YES];
    
    //注意不能在这里移除通知否则pus进去后有pop失效
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

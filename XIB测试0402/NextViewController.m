//
//  NextViewController.m
//  XIB测试0402
//
//  Created by WangXueqi on 2018/4/2.
//  Copyright © 2018年 JingBei. All rights reserved.
//

#import "NextViewController.h"
#import "BaseView.h"
@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    BaseView * base = [[[NSBundle mainBundle]loadNibNamed:@"BaseView" owner:self options:nil] firstObject];
    base.frame = self.view.bounds;
    [self.view addSubview:base];
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

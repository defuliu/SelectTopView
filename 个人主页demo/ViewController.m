//
//  ViewController.m
//  个人主页demo
//
//  Created by hyw on 2018/11/14.
//  Copyright © 2018年 bksx. All rights reserved.
//

#import "ViewController.h"
#import "PersonalCenterViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *enlargeSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 40)];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [self.view addSubview:btn];
}


- (void)btnAction:(UIButton *)sender
{
    
    PersonalCenterViewController *personalCenterVC = [[PersonalCenterViewController alloc]init];
    personalCenterVC.isEnlarge = self.enlargeSwitch.on;
    personalCenterVC.selectedIndex = 0;
    [self.navigationController pushViewController:personalCenterVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ViewController.m
//  demo
//
//  Created by shaw on 15/5/8.
//  Copyright (c) 2015年 shaw. All rights reserved.
//

#import "ViewController.h"
#import "ZSDPaymentView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(50, 100, 100, 50);
    [btn setTitle:@"test" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor greenColor]];
    [btn addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)showAlert:(id)sender
{
    ZSDPaymentView *payment = [[ZSDPaymentView alloc]init];
    payment.title = @"支付密码标题";
    payment.goodsName = @"商品名称";
    payment.amount = 20.00f;
    
    [payment show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

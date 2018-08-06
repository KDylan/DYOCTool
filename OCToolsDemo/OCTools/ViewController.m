//
//  ViewController.m
//  OCTools
//
//  Created by Dylan on 2018/8/6.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import "ViewController.h"
#import "DYProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [DYProgressHUD showSuccess:@"asfafafafafaaf" ToView:self.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

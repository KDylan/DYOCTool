//
//  UIBarButtonItem+DylanExtention.m
//  MeiTuan
//
//  Created by Dylan on 2018/7/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import "UIBarButtonItem+DYExtention.h"
#import "UIView+DYExtention.h"
@implementation UIBarButtonItem (DYExtention)

+(instancetype)iteamwithImageNamed:(NSString *)imageName HighImageNamed:(NSString *)HighImageName target:(id)target action:(SEL)action{
    
//    UIButton *but = [[UIButton alloc]init];
//
//    [but setImage:[UIImage imageorginalNamed:imageName] forState:UIControlStateNormal];
//
//    [but setImage:[UIImage imageorginalNamed:HighImageName] forState:UIControlStateHighlighted];
//
//    but.frame = CGRectMake(0, 0, but.currentImage.size.width, but.currentImage.size.height);
//
//    [but addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
//
//    //显示图片
//    return [[UIBarButtonItem alloc]initWithCustomView:but];
    
    UIButton * btn = [[UIButton alloc]init];
    [btn setImage:[UIImage imageNamed:imageName] forState:(UIControlStateNormal)];
    [btn setImage:[UIImage imageNamed:HighImageName] forState:(UIControlStateHighlighted)];
    //设置大小
    btn.size = btn.currentImage.size;
    
    [btn addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}


+(instancetype)iteamwithTitle:(NSString *)title target:(id)target action:(SEL)action{
    
    UIButton * btn = [[UIButton alloc]init];
    
    [btn setTitle:title forState:(UIControlStateNormal)];
    //设置大小
    [btn sizeToFit];
    
//    [btn setTitleColor:RGB(53.0, 124.0, 246.0) forState:(UIControlStateNormal)];
    
    [btn addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}
@end

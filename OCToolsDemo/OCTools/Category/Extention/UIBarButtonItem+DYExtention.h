//
//  UIBarButtonItem+DylanExtention.h
//  MeiTuan
//
//  Created by Dylan on 2018/7/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (DYExtention)

+(instancetype)iteamwithImageNamed:(NSString *)imageName HighImageNamed:(NSString *)HighImageName target:(id)target action:(SEL)action;


+(instancetype)iteamwithTitle:(NSString *)title target:(id)target action:(SEL)action;

@end

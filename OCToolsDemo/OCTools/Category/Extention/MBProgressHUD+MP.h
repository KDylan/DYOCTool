//
//  MBProgressHUD+MP.h
//  MobileProject
//  当引入MBProgressHUD时把下面的代码开放出来
//  使用如下：
//  [MBProgressHUD showIconMessage:@"默认图,X秒后自动消失" ToView:self.view RemainTime:3];
//  如果没有视图则可以[MBProgressHUD showIconMessage:@"默认图,X秒后自动消失" ToView:nil RemainTime:3];
//  [MBProgressHUD showMessage:@"纯文字,不自动消失" ToView:self.view];  关掉则用：[MBProgressHUD hideHUD];//使用此方法进行隐藏
//  MBProgressHUD *hud = [MBProgressHUD showProgressToView:nil Text:@"loading"];  隐藏：[hud hide:YES];
//  [MBProgressHUD showAutoMessage:@"自动消失"];
//  [MBProgressHUD showSuccess:@"下载完成" ToView:self.view];
//  [MBProgressHUD showError:@"下载失败" ToView:self.view];
//  Created by wujunyang on 16/7/9.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MBProgressHUD.h"

@interface MBProgressHUD (MP)


/**
 显示错误消息,带图
 
 @param error error
 @param view view
 */
+ (void)showError:(NSString *)error ToView:(UIView *)view;

/**
 显示成功消息,带图
 
 @param success success
 @param view view
 */
+ (void)showSuccess:(NSString *)success ToView:(UIView *)view;

/**
 显示普通消息带图
 
 @param Info Info
 @param view view
 */
+ (void)showInfo:(NSString *)Info ToView:(UIView *)view;

/**
 显示警告消息，带图
 
 @param Warn Warn
 @param view view
 */
+ (void)showWarn:(NSString *)Warn ToView:(UIView *)view;

#pragma mark 显示一些信息

/**
 自动消失提示，无图[2.0s消失]
 
 @param message message
 @param view view
 */
+ (void)showAutoMessage:(NSString *)message ToView:(UIView *)view;
/**
 显示菊花，不自动消失
 
 @param message message
 */
+ (void)showLoadToView:(NSString *)message ToView:(UIView *)view;

/**
 自定义停留时间，有图【显示菊花】
 
 @param message message
 @param view view
 @param time time
 */
+(void)showIconMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time;

/**
 自定义停留时间，无图
 
 @param message message
 @param view view
 @param time time
 */
+(void)showMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time;

/**
 显示不带图片的信息
 
 @param message 显示信息
 @param view view
 @param time 隐藏时间
 @param model hud类型
 */
+(void)showMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time Model:(MBProgressHUDMode)model;
/**
 显示带图片的信息
 
 @param image 图片
 @param title 显示信息
 @param view view
 */
+ (void)showCustomIcon:(UIImage *)image Title:(NSString *)title ToView:(UIView *)view;
/**
 隐藏一个view【自己输入view】
 
 @param view view
 */
+ (void)hideHUDForView:(UIView *)view;
/**
 隐藏一个view
 */
//+ (void)hideHUD;
@end

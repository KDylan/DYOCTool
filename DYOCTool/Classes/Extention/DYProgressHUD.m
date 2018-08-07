//
//  DYProgressHUD.m
//  OCTools
//
//  Created by Dylan on 2018/8/6.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import "DYProgressHUD.h"


@implementation DYProgressHUD

#pragma mark 显示错误信息

/**
 显示错误消息,带图
 
 @param error error
 @param view view
 */
+ (void)showError:(NSString *)error ToView:(UIView *)view{
    
    //    [self showCustomIcon:@"MBHUD_Error" Title:error ToView:view];
    
    [self showCustomIcon:[UIImage imageNamed:@"Image.bundle/MBHUD_Error@2x"] Title:error ToView:view];
    
}

/**
 显示成功消息,带图
 
 @param success success
 @param view view
 */
+ (void)showSuccess:(NSString *)success ToView:(UIView *)view
{
    [self showCustomIcon:[UIImage imageNamed:@"Image.bundle/MBHUD_Success@2x"] Title:success ToView:view];
}

/**
 显示普通消息带图
 
 @param Info Info
 @param view view
 */
+ (void)showInfo:(NSString *)Info ToView:(UIView *)view
{
    [self showCustomIcon:[UIImage imageNamed:@"Image.bundle/MBHUD_Info@2x"] Title:Info ToView:view];
}


/**
 显示警告消息，带图
 
 @param Warn Warn
 @param view view
 */
+ (void)showWarn:(NSString *)Warn ToView:(UIView *)view
{
    [self showCustomIcon:[UIImage imageNamed:@"Image.bundle/MBHUD_Warn@@2x"] Title:Warn ToView:view];
}

#pragma mark 显示一些信息


/**
 自动消失提示，无图[2.0s消失]
 
 @param message message
 @param view view
 */
+ (void)showAutoMessage:(NSString *)message ToView:(UIView *)view{
    
    [self showMessage:message ToView:view RemainTime:2.0 Model:MBProgressHUDModeText];
}

/**
 显示菊花，不自动消失
 
 @param message message
 */
+ (void)showLoadToView:(NSString *)message ToView:(UIView *)view{
    
    [self showIconMessage:message ToView:view RemainTime:0];
    
}

/**
 自定义停留时间，有图【显示菊花】
 
 @param message message
 @param view view
 @param time time
 */
+(void)showIconMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time{
    
    [self showMessage:message ToView:view RemainTime:time Model:MBProgressHUDModeIndeterminate];
}

/**
 自定义停留时间，无图
 
 @param message message
 @param view view
 @param time time
 */
+(void)showMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time{
    
    [self showMessage:message ToView:view RemainTime:time Model:MBProgressHUDModeText];
}


/**
 显示不带图片的信息
 
 @param message 显示信息
 @param view view
 @param time 隐藏时间
 @param model hud类型
 */
+(void)showMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time Model:(MBProgressHUDMode)model{
    
    [self hideHUDForView:view];
    
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    //模式
    hud.mode = model;
    
    hud.label.text=message;
    
    hud.bezelView.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.9];
    
    //  显示加载的菊花为白色
    hud.activityIndicatorColor = [UIColor whiteColor];
    
    hud.label.textColor = [UIColor whiteColor];
    
    
    // 代表需要蒙版效果
    hud.dimBackground = YES;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    //  判断是不是需要自动消失
    if (time>0.0) {
        // X秒之后再消失
        [hud hideAnimated:YES  afterDelay:time];
        
    }
    
}

/**
 显示带图片的信息
 
 @param image 图片
 @param title 显示信息
 @param view view
 */
+ (void)showCustomIcon:(UIImage *)image Title:(NSString *)title ToView:(UIView *)view
{
    [self hideHUDForView:view];
    
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 设置图片
    //    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:iconName]];
    
    hud.customView = [[UIImageView alloc]initWithImage:image];
    
    hud.bezelView.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.9];
    
    hud.label.text = title;
    
    hud.label.textColor = [UIColor whiteColor];
    
    // 代表需要蒙版效果
    hud.dimBackground = YES;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 3秒之后再消失
    [hud hideAnimated:YES afterDelay:2.0];
}


/**
 隐藏一个view【自己输入view】
 
 @param view view
 */
+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = (UIView*)[UIApplication sharedApplication].delegate.window;
    
    [self hideHUDForView:view animated:YES];
}

@end

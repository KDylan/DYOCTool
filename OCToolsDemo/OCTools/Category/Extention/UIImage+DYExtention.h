//
//  UIImage+DylanExtention.h
//  MeiTuan
//
//  Created by Dylan on 2018/7/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import <UIKit/UIKit.h>
//自定义UIimage类方法；可以直接调用
@interface UIImage (DYExtention)

//保持图片不渲染方法
@property(nonatomic,strong,readonly)UIImage *originarimage;

@property(nonatomic,strong,readonly)UIImage *resiziable;

+(UIImage *)imageorginalNamed:(NSString *)name;

//保护屏幕四周不虚化
+(UIImage *)resiziable:(NSString *)name;

@end

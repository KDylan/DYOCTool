//
//  DylanCellAutoHeightHelper.h
//  MeiTuan
//
//  Created by Dylan on 2018/7/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DYCellAutoHeightHelper : NSObject


/**
 自适应cell的高度
 
 @param height 高度
 @param width 宽度
 @param text 内容
 @param font 字体大小
 @return float
 */
-(float)cellAdjustHeight:(float)height andWidth:(float)width TextContent:(NSString *)text WithTextFont:(float)font;
@end

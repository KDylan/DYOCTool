//
//  DylanCellAutoHeightHelper.m
//  MeiTuan
//
//  Created by Dylan on 2018/7/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import "DYCellAutoHeightHelper.h"

@implementation DYCellAutoHeightHelper
/**
 自适应cell的高度
 
 @param height 高度
 @param width 宽度
 @return float
 */
-(float)cellAdjustHeight:(float)height andWidth:(float)width TextContent:(NSString *)text WithTextFont:(float)font{
    
    CGSize maxSize = CGSizeMake(width, MAXFLOAT);//最大高度

    return  [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil].size.height+34;
    
}
@end

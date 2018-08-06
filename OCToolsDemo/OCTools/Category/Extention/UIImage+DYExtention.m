//
//  UIImage+DylanExtention.m
//  MeiTuan
//
//  Created by Dylan on 2018/7/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import "UIImage+DYExtention.h"

@implementation UIImage (DYExtention)

-(UIImage *)originarimage{
    
    return [self imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

-(UIImage *)resiziable{
    return [self stretchableImageWithLeftCapWidth:self.size.width * 0.5 topCapHeight:self.size.width * 0.5];
}

+(UIImage *)imageorginalNamed:(NSString *)name
{
    UIImage *image = [UIImage imageNamed:name];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}

+(UIImage *)resiziable:(NSString *)name{
    UIImage *image = [UIImage imageorginalNamed:name];
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.width * 0.5];
    return  image;
    
    
}

@end

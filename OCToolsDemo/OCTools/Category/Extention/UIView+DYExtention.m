//
//  UIView+DylanExtention.m
//  MeiTuan
//
//  Created by Dylan on 2018/7/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import "UIView+DYExtention.h"

@implementation UIView (DylanExtention)

// get和set方法获取frame
-(CGFloat)x
{
    return self.frame.origin.x;
}
-(void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(CGFloat)y
{
    return self.frame.origin.y;
}
-(void)setY:(CGFloat)y
{
    
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

-(CGFloat)wdith
{
    return  self.frame.size.width;
}
-(void)setWdith:(CGFloat)wdith{
    CGRect frame =self.frame;
    frame.size.width = wdith;
    self.frame=frame;
}

-(CGFloat)height
{
    return  self.frame.size.height;
}
-(void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
-(CGSize)size{
    return  self.frame.size;
}
-(void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
-(CGFloat)centerX
{
    return self.center.x;
}
-(CGFloat)centery
{
    return self.center.y;
}
-(void)setCenterX:(CGFloat)centerX{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}
-(void)setCentery:(CGFloat)centery{
    CGPoint center = self.center;
    center.y = centery;
    self.center = center;
}
@end

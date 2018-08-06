//
//  UIButton+DYButton.h
//  CitySelect
//
//  Created by comit on 2017/8/16.
//  Copyright © 2017年 comit. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^clickTapHandler)(UIButton *sender);

@interface UIButton (DYButton)

+ (instancetype)buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(CGFloat)font textAlignment:(NSTextAlignment)textAlignment  image:(UIImage *)image imageViewContentMode:(UIViewContentMode)imageViewContentMode;


@end

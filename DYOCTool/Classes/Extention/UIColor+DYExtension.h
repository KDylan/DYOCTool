//
//  UIColor+DYExtension.h
//  MCRM
//
//  Created by Jason on 16/8/6.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (DYExtension)

/**
 透明度固定为1，以0x开头的十六进制转换的颜色[eg:0X666666]

 @param hexColor hexColor
 @return UIColor
 */
+ (UIColor *)colorWithHex:(long)hexColor;

/**
 0x开头的十六进制转换成的颜色,透明度可调整

 @param hexColor hexColor
 @param alpha alpha
 @return UIColor
 */
+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)alpha;

/**
 iOS中十六进制的颜色（以#开头）转换为UIColor

 @param color color
 @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 iOS中十六进制的颜色（以#开头）转换为UIColor 透明度可调整

 @param color color
 @param alpha alpha
 @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(float)alpha;


/**
 grayColor【#666666】
 
 @return UIColor
 */

+ (UIColor *)crm_grayColor;

/**
 blackColor【#1d1d26】
 
 @return UIColor
 */

+ (UIColor *)crm_blackColor;

/**
 redColor【#e14238】
 
 @return UIColor
 */
+ (UIColor *)crm_redColor;

/**
 orangeColor【#ee7524】
 
 @return UIColor
 */

+ (UIColor *)crm_orangeColor;


/**
 随机色
 
 @param alpha alpha
 @return randomColor
 */
+(UIColor *)randomColoralpha:(float)alpha;

@end

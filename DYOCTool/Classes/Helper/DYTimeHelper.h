//
//  DYTimeHelper.h
//  百度APi调用
//
//  Created by comit on 2017/8/9.
//  Copyright © 2017年 comit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYTimeHelper : NSObject

+ (DYTimeHelper *)getInstance;
#pragma mark -----------------------------------时间处理----------------------------------
/**
 计算时间
 
 @param startTime 开始时间
 @param endTime 结束时间
 @return NSString
 */
-(NSString *)dealWithStayTimeStartTime:(NSDate *)startTime endTime:(NSDate *)endTime;

/**
 处理时间string-date：默认@"MM-dd HH:mm:ss"
 
 @param Date 时间
 @return date
 */

+(NSDate *)dealTimeStringToDate:(NSString *)Date;

/**
 NSDate-string(月-日 时：分：秒)默认@"yyyy-MM-dd"
 
 @param dateTime nsdate
 @return nsstring
 */
+(NSString *)dealTimeDateToString:(NSDate *)dateTime;



/**
 处理时间string-date[自己输入时间格式]
 
 @return date
 */
+(NSDate *)dealTimeStringToDate:(NSString *)data format:(NSString *)format;

/**
 NSDate-string
 
 @param dateTime nsdate[自己输入时间格式]
 @return nsstring
 */
+(NSString *)dealTimeDateToString:(NSDate *)dateTime format:(NSString *)format;


/**
 获取当前时间
 
 @param format format
 @return String
 */
+(NSString *)getCurrentDateformat:(NSString *)format;
@end

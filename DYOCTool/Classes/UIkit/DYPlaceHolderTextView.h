//
//  DYPlaceHolderTextView.h
//  cocotext
//
//  Created by Dylan on 2018/7/20.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYPlaceHolderTextView : UITextView

/**textview占位符*/
@property (nonatomic, strong) NSString *placeholder;

/** textView占位符颜色 */
@property (nonatomic, strong) UIColor *placeholderColor;

/**
 监听textView值变化
 
 @param notification notification
 */
-(void)textChanged:(NSNotification*)notification;

@end

//
//  DYAlertViewHelper.h
//  cocotext
//
//  Created by Dylan on 2018/7/20.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DYAlertViewHelper : NSObject

typedef void (^LeftBlock)();

typedef void (^RightBlock)();

typedef void (^RightBlockWithText)(NSString *title);

//typedef void (^LeftVCBlock)(UIAlertAction *  action);
//
//typedef void (^RightvcBlock)(UIAlertAction *  action);


+ (DYAlertViewHelper *)getInstance;


#pragma mark ------------------- alertInputView --------------------------

/**
 显示一个Alert输入框[可以设置输入框默认值+占位符]  默认左边取消按钮，右边确定按钮
 
 @param title  标题
 @param rightBlockWithText  标题
 @param text 输入框文本
 @param placeholder 占位符
 */

-(void)showInput:(NSString *)title
      rightBlock:(RightBlockWithText) rightBlockWithText
  textFieldValue:(NSString *)text
     placeholder:(NSString *)placeholder;


/**
 显示一个Alert输入框[不能设置默认值+占位符]  默认左边取消按钮，右边确定按钮
 
 @param title title
 @param rightBlockWithText 确定回调
 */
-(void)showInput:(NSString *)title
      rightBlock:(RightBlockWithText) rightBlockWithText;


/**
 显示一个Alert输入框[不能设置默认值+占位符 可以设置副标题 ]默认左边取消按钮，右边确定按钮
 
 @param title 标题
 @param msg  提示
 @param rightBlockWithText 确定回调
 */
-(void)showInput:(NSString *)title
             msg:(NSString *)msg
      rightBlock:(RightBlockWithText) rightBlockWithText;


/**
 显示一个Alert输入框[可以设置默认值+占位符 可以设置副标题]默认左边取消按钮，右边确定按钮
 
 
 @param title 标题
 @param msg 副标题
 @param rightBlockWithText 回调用
 @param text 默认值
 @param placeholder 占位符
 */
-(void)showInput:(NSString *)title
             msg:(NSString *)msg
      rightBlock:(RightBlockWithText) rightBlockWithText
  textFieldValue:(NSString *)text placeholder:(NSString *)placeholder;


/**
 显示一个Alert输入框【不能设置默认值+标题】  默认左边取消按钮，右边确定按钮
 
 @param title 标题
 @param msg 提示
 @param leftTitle 左边按钮
 @param leftBlock 左边回调
 @param rigthTitle 右边按钮
 @param rightBlock 右边回调
 */
-(void)showInput:(NSString *)title
             msg:(NSString *)msg
       leftTitle:(NSString *)leftTitle
       leftBlock:(LeftBlock) leftBlock
      rigthTitle:(NSString *)rigthTitle
      rightBlock:(RightBlockWithText) rightBlock;


/**
 显示一个Alert输入框[可以设置输入框默认值+占位符+副标题]  默认左边取消按钮，右边确定按钮
 
 @param title 标题
 @param msg 提示
 @param leftTitle 左边按钮
 @param leftBlock 左边回调
 @param rigthTitle 右边按钮
 @param rightBlockWithText 右边回调
 @param text 默认值
 @param placeholder 占位符
 */
-(void)showInput:(NSString *)title
             msg:(NSString *)msg
       leftTitle:(NSString *)leftTitle
       leftBlock:(LeftBlock) leftBlock
      rigthTitle:(NSString *)rigthTitle
      rightBlock:(RightBlockWithText) rightBlockWithText
 textFieldValue : (NSString *)text
     placeholder:(NSString *)placeholder;


#pragma mark ------------------- alertView --------------------------


/**
 显示Alert【一个按钮,没绑定点击事件】 默认显示 确定按钮
 @param title 标题
 @param msg 提示
 */
-(void)show:(NSString *)title msg:(NSString *)msg;


/**
 显示Alert【一个按钮,绑定点击事件】 默认显示 确定按钮
 
 @param title 标题
 @param msg 提示
 @param leftBlock 回调
 */
-(void)show:(NSString *)title msg:(NSString *)msg  leftBlock:(LeftBlock) leftBlock;


/**
 显示Alert【两个按钮,确定按钮绑定点击事件】 默认显示 确定按钮
 @param title 标题
 @param msg 提示
 @param rightBlock 右边按钮回调
 */
-(void)show:(NSString *)title
        msg:(NSString *)msg
 rightBlock:(RightBlock) rightBlock;


/**
 显示Alert【两个按钮,两个按钮都绑定点击事件】 默认显示 确定按钮
 
 @param title 标题
 @param msg 提示
 @param leftTitle 左边按钮提示
 @param leftBlock 左边按钮回调
 @param rigthTitle 右边按钮提示
 @param rightBlock 右边按钮回调
 */
-(void)show:(NSString *)title
        msg:(NSString *)msg
  leftTitle:(NSString *)leftTitle
  leftBlock:(LeftBlock) leftBlock
 rigthTitle:(NSString *)rigthTitle
 rightBlock:(RightBlock) rightBlock;

#pragma mark ------------------- alertControoller --------------------------

/**
 显示AlertController 弹出一个按钮
 
 
 @param title 标题
 @param message 副标题
 @param leftTitle 按钮标题
 @param handler 绑定事件
 @return Controller
 */

- (UIAlertController *)alertWithTitle:(NSString *)title message:(NSString *)message leftTitle:(NSString *)leftTitle handler:(LeftBlock)handler;
/**
 弹出两个选择按钮
 
 @param title 标题
 @param message 副标题
 @param leftTitle 左侧按钮标题
 @param rightTitle 右侧按钮标题
 @param lefthandler 左侧绑定事件
 @param righthandler 右侧绑定事件
 @return Controller
 */
- (UIAlertController *)alertWithTitle:(NSString *)title message:(NSString *)message leftTitle:(NSString *)leftTitle  lefthandler:(LeftBlock)lefthandler rightTitle:(NSString *)rightTitle righthandler:(RightBlock)righthandler;

//-(UIAlertController *)alertInputWithTitle:(NSString *)title message:(NSString *)message leftTitle:(NSString *)leftTitle lefthandler:(LeftBlock)lefthandler rightTitle:(NSString *)rightTitle righthandler:(RightvcBlock)righthandler textStr:(NSString *)textStr placeholder:(NSString *)placeholder;
@end

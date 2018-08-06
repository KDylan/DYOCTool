//
//  DYAlertViewHelper.m
//  cocotext
//
//  Created by Dylan on 2018/7/20.
//  Copyright © 2018年 Dylan. All rights reserved.
//

#import "DYAlertViewHelper.h"
@import UIKit;

static DYAlertViewHelper *instance = nil;

@interface DYAlertViewHelper()<UIAlertViewDelegate>

@property (nonatomic,copy) LeftBlock leftBlock;

@property (nonatomic,copy) RightBlock rightBlock;

@property (nonatomic,copy) RightBlockWithText rightBlockWithText;

@end


@implementation DYAlertViewHelper

+ (DYAlertViewHelper *)getInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[DYAlertViewHelper alloc] init];
    });
    
    return instance;
}

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
     placeholder:(NSString *)placeholder{
    
    [self showInput:title ? title : @"提示" msg:nil leftTitle:@"取消" leftBlock:nil rigthTitle:@"确定" rightBlock:rightBlockWithText textFieldValue:text placeholder:placeholder];
    
}



/**
 显示一个Alert输入框[不能设置默认值+占位符]  默认左边取消按钮，右边确定按钮
 
 @param title title
 @param rightBlockWithText 确定回调
 */
-(void)showInput:(NSString *)title
      rightBlock:(RightBlockWithText) rightBlockWithText{
    
    [self showInput:title ? title : @"提示" msg:nil leftTitle:@"取消" leftBlock:nil rigthTitle:@"确定" rightBlock:rightBlockWithText];
    
}

/**
 显示一个Alert输入框[不能设置默认值+占位符 可以设置副标题 ]默认左边取消按钮，右边确定按钮
 
 @param title 标题
 @param msg  提示
 @param rightBlockWithText 确定回调
 */
-(void)showInput:(NSString *)title
             msg:(NSString *)msg
      rightBlock:(RightBlockWithText)rightBlockWithText{
    
    [self showInput:title msg:msg leftTitle:@"取消" leftBlock:nil rigthTitle:@"确定" rightBlock:rightBlockWithText];
    
}

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
  textFieldValue:(NSString *)text placeholder:(NSString *)placeholder
{
    
    [self showInput:title msg:msg leftTitle:@"取消" leftBlock:nil rigthTitle:@"确定" rightBlock:rightBlockWithText textFieldValue:text placeholder:placeholder];
    
}

/**
 显示一个Alert输入框【不能设置默认值+标题】  默认左边取消按钮，右边确定按钮
 
 @param title 标题
 @param msg 提示
 @param leftTitle 左边按钮
 @param leftBlock 左边回调
 @param rigthTitle 右边按钮
 @param rightBlockWithText 右边回调
 */
-(void)showInput:(NSString *)title
             msg:(NSString *)msg
       leftTitle:(NSString *)leftTitle
       leftBlock:(LeftBlock) leftBlock
      rigthTitle:(NSString *)rigthTitle
      rightBlock:(RightBlockWithText) rightBlockWithText{
    
    [self showInput:title msg:msg leftTitle:leftTitle leftBlock:leftBlock rigthTitle:rigthTitle rightBlock:rightBlockWithText textFieldValue:nil placeholder:nil];
    
}


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
     placeholder:(NSString *)placeholder
{
    self.leftBlock = nil;
    self.leftBlock = [leftBlock copy];
    self.rightBlockWithText = nil;
    self.rightBlockWithText = [rightBlockWithText copy];
    UIAlertView *alert = [self buildAlertVew:title msg:msg leftTitle:leftTitle rigthTitle:rigthTitle];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    UITextField *tf = [alert textFieldAtIndex:0];
    tf.text = text;
    tf.placeholder = placeholder;
    //设置键盘风格
    //tf.keyboardType = UIKeyboardTypeNumberPad;
    tf.returnKeyType = UIReturnKeyDone;
    [alert show];
    
}

#pragma mark ------------------- alertView --------------------------



/**
 显示Alert【一个按钮,没绑定点击事件】 默认显示 确定按钮
 @param title 标题
 @param msg 提示
 */
-(void)show:(NSString *)title msg:(NSString *)msg
{
    [self show:title ? title : @"提示"
           msg:msg
     leftTitle:nil
     leftBlock:nil
    rigthTitle:@"确定"
    rightBlock:nil];
}



/**
 显示Alert【一个按钮,绑定点击事件】 默认显示 确定按钮
 
 @param title 标题
 @param msg 提示
 @param leftBlock 回调
 */
-(void)show:(NSString *)title msg:(NSString *)msg  leftBlock:(LeftBlock) leftBlock
{
    [self show:title ? title : @"提示"
           msg:msg
     leftTitle:@"确定"
     leftBlock:leftBlock
    rigthTitle:nil
    rightBlock:nil];
}



/**
 显示Alert【两个按钮,确定按钮绑定点击事件】 默认显示 确定按钮
 @param title 标题
 @param msg 提示
 @param rightBlock 右边按钮回调
 */

-(void)show:(NSString *)title msg:(NSString *)msg rightBlock:(RightBlock) rightBlock
{
    [self show:title ? title : @"提示"
           msg:msg
     leftTitle:@"取消"
     leftBlock:nil
    rigthTitle:@"确定"
    rightBlock:rightBlock];
}

/**
 显示Alert【两个按钮,两个按钮都绑定点击事件】 默认显示 确定按钮
 
 @param title 标题
 @param msg 提示
 @param leftTitle 左边按钮提示
 @param leftBlock 左边按钮回调
 @param rigthTitle 右边按钮提示
 @param rightBlock 右边按钮回调
 */
-(void)show:(NSString *)title msg:(NSString *)msg
  leftTitle:(NSString *)leftTitle
  leftBlock:(LeftBlock) leftBlock
 rigthTitle:(NSString *)rigthTitle
 rightBlock:(RightBlock) rightBlock
{
    self.leftBlock = nil;
    self.leftBlock = [leftBlock copy];
    self.rightBlock = nil;
    self.rightBlock = [rightBlock copy];
    UIAlertView *alert = [self buildAlertVew:title msg:msg leftTitle:leftTitle rigthTitle:rigthTitle];
    [alert show];
    
}


-(UIAlertView *)buildAlertVew:(NSString *)title
                          msg:(NSString *)msg
                    leftTitle:(NSString *)leftTitle
                   rigthTitle:(NSString *)rigthTitle{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:leftTitle otherButtonTitles:rigthTitle, nil];
    return alert;
}


- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex NS_DEPRECATED_IOS(2_0, 9_0){
    
    switch (buttonIndex){
            
        case 0:
            if(self.leftBlock){
                self.leftBlock();
            }
            //            self.leftBlock = nil;
            break;
        case 1:
            if(self.rightBlock){
                self.rightBlock();
            }else if(self.rightBlockWithText){
                NSString *text = [alertView textFieldAtIndex:0].text;
                self.rightBlockWithText(text);
            }
            //            self.rightBlock = nil;
            //            self.rightBlockWithText = nil;
            break;
    }
    self.leftBlock = nil;
    self.rightBlock = nil;
    self.rightBlockWithText = nil;
}

#pragma mark ------------------- alertControoller --------------------------

/**
 显示AlertController 弹出一个按钮
 
 
 @param title 标题
 @param message 副标题
 @param leftTitle 按钮标题
 @param handler 绑定事件
 @return Controller
 */
- (UIAlertController *)alertWithTitle:(NSString *)title message:(NSString *)message leftTitle:(NSString *)leftTitle handler:(LeftBlock)handler{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:leftTitle
                                                           style:UIAlertActionStyleCancel
                                                         handler:handler];
    [alert addAction:cancelAction];
    
    return alert;
    
}

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
- (UIAlertController *)alertWithTitle:(NSString *)title message:(NSString *)message leftTitle:(NSString *)leftTitle  lefthandler:(LeftBlock)lefthandler rightTitle:(NSString *)rightTitle righthandler:(RightBlock)righthandler{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:leftTitle
                                                           style:UIAlertActionStyleCancel
                                                         handler:lefthandler];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:rightTitle
                                                       style:UIAlertActionStyleDefault
                                                     handler:righthandler];
    [alert addAction:cancelAction];
    
    [alert addAction:okAction];
    
    return alert;
}

#pragma mark ------------------- InputAlertControoller --------------------------

//-(UIAlertController *)alertInputWithTitle:(NSString *)title message:(NSString *)message leftTitle:(NSString *)leftTitle lefthandler:(LeftBlock)lefthandler rightTitle:(NSString *)rightTitle righthandler:(RightvcBlock)righthandler textStr:(NSString *)textStr placeholder:(NSString *)placeholder{
//
//    UIAlertController *InputAlert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
//
//    [InputAlert addTextFieldWithConfigurationHandler:^(UITextField *textField){
//        textField.placeholder = placeholder;
//        textField.text = textStr;
//    }];
//
//    UITextField *textFiled = InputAlert.textFields.firstObject;
//
//    NSLog(@"点击%@", textFiled.text);
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:leftTitle
//                                                           style:UIAlertActionStyleCancel
//                                                         handler:lefthandler];
//
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:rightTitle
//                                                       style:UIAlertActionStyleDefault
//                                                     handler:righthandler];
////    [self alertController:InputAlert];
//    [InputAlert addAction:okAction];
//    [InputAlert addAction:cancelAction];
//
//    return InputAlert;
//}

//-(void)alertController:(UIAlertController *)Controller{
//
//    if (self.rightBlockWithText) {
//
//          NSString *textStr= Controller.textFields.firstObject.text;
//
//        NSLog(@"textystr = %@",textStr);
//        self.rightBlockWithText(textStr);
//    }
//}
@end

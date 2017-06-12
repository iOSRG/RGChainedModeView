//
//  UITextField+RG.h
//  RG_Viwe
//
//  Created by koogfook on 17/5/13.
//  Copyright © 2017年 zhubaoshang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (RG)

//密码类型
-(UITextField* (^)(BOOL secureTextEntry))rg_SecureTextEntry;

//占位文字和颜色
-(UITextField* (^)(NSString *placeholder, UIColor *PlaceholderColor))rg_PlaceholderAndPlaceholderColor;
//左视图
-(UITextField* (^)(UIView *leftView))rg_LeftView;
//左视图和Frame
-(UITextField* (^)(UIView *leftView ,CGRect frame))rg_LeftViewAndLeftViewFrame;

//占位文字颜色
-(UITextField* (^)(UIColor *PlaceholderColor))rg_PlaceholderColor;

//占位文字
-(UITextField* (^)(NSString *placeholder))rg_Placeholder;

//键盘类型
-(UITextField* (^)(UIKeyboardType keyboardType))rg_KeyboardType;
//代理
-(UITextField* (^)(id delegate))rg_Delegate;

//右视图和Frame
-(UITextField* (^)(UIView *rightView ,CGRect frame))rg_RightViewAndRightViewFrame;

//右视图
-(UITextField* (^)(UIView *rightView))rg_RightView;

@end
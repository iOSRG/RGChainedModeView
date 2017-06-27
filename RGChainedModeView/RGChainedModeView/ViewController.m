//
//  ViewController.m
//  RGChainedModeView
//
//  Created by koogfook on 17/6/12.
//  Copyright © 2017年 zhubaoshang. All rights reserved.
//

#import "ViewController.h"
#import "RGView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    lbl.rg_text(@"Lable").rg_fontSize(13).rg_textColor([UIColor redColor]).rg_textAlignment(NSTextAlignmentCenter).rg_backgroundColor([UIColor blackColor]).rg_supView(self.view);
    
    
    
    UIView *view  = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    view.rg_supView(self.view).rg_backgroundColor([UIColor redColor]).rg_CornerRadius(50);
    
    
    //注意调用父类方法必须放到最后,因为返回值为必须指定一个真实类型才能继续使用点语法;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(250, 100, 100, 100)];
    btn.rg_ControlStateForTitleAndColor(@"正常Btn",[UIColor redColor],UIControlStateNormal);
    btn.rg_ControlStateForTitleAndColor(@"选择Btn",[UIColor redColor],UIControlStateSelected);
    btn.rg_supView(self.view).rg_backgroundColor([UIColor greenColor]).rg_CornerRadius(50);
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(210, 300, 150, 30)];
    tf.rg_supView(self.view).rg_backgroundColor([UIColor redColor]);
    UIView *leftV = [[UIView alloc] init];
    UIView *rightV = [[UIView alloc] init];
    leftV.rg_backgroundColor([UIColor blackColor]);
    rightV.rg_backgroundColor([UIColor blackColor]);
    tf.rg_Placeholder(@"textFild").rg_PlaceholderColor([UIColor blackColor]).rg_KeyboardType(UIKeyboardTypeNumberPad).rg_LeftViewAndLeftViewFrame(leftV,CGRectMake(0, 0, 30, 30)).rg_RightViewAndRightViewFrame(rightV,CGRectMake(0, 0, 30, 30));

  
}



-(void)click:(UIButton *)sender
{
    
    sender.selected = !sender.selected;
}



@end

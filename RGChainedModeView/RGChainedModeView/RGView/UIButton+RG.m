//
//  UIButton+RG.m
//  RG_Viwe
//
//  Created by koogfook on 17/5/13.
//  Copyright © 2017年 zhubaoshang. All rights reserved.
//

#import "UIButton+RG.h"

@implementation UIButton (RG)



#pragma mark -默认的图片
-(UIButton* (^)(NSString *imageName))rg_NormalImageName
{
    
    return ^(NSString *imageName){
        
           [self setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        
        return self;
        
    };
}


#pragma mark -选择的图片
-(UIButton* (^)(NSString *imageName))rg_SelectedImageName
{
    
    return ^(NSString *imageName){
        
        [self setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateSelected];
        
        return self;
        
    };
}


#pragma mark -自定义图片和状态
-(UIButton* (^)(NSString *imageName , UIControlState controlState))rg_ControlStateAndImageName
{
    
    return ^(NSString *imageName , UIControlState controlState){
        
        [self setBackgroundImage:[UIImage imageNamed:imageName] forState:controlState];
        
        return self;
        
    };
}


#pragma mark -正常状态下的标题
-(UIButton* (^)(NSString *title))rg_NormalTitle
{
    
    return ^(NSString *title){
        
        [self setTitle:title forState:UIControlStateNormal];
        return self;
        
    };
}

#pragma mark - 选中状态下的标题
-(UIButton* (^)(NSString *title))rg_SelectedTitle
{
    
    return ^(NSString *title){
        
        [self setTitle:title forState:UIControlStateSelected];
        return self;
        
    };
}



#pragma mark - 自定义标题,颜色和状态
-(UIButton* (^)(NSString *title , UIColor *color,UIControlState controlState))rg_ControlStateForTitleAndColor
{
    
    
    return ^(NSString *title ,UIColor *color, UIControlState controlState){
        
        
        
        [self setTitle:title forState:controlState];
        [self setTitleColor:color forState:controlState];
        
        return self;
        
    };
}

#pragma mark - 标题字体大小
-(UIButton* (^)(CGFloat titleFontSize))rg_titleFontSize
{
    
    
    return ^UIButton *(CGFloat titleFontSize){
        
        self.titleLabel.font  = [UIFont systemFontOfSize:titleFontSize];
        
        return self;
        
    };
}



@end

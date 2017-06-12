//
//  UITableView+RG.h
//  RG_Viwe
//
//  Created by koogfook on 17/5/13.
//  Copyright © 2017年 zhubaoshang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (RG)

#pragma mark - 分割线样式
-(UITableView* (^)(UITableViewCellSeparatorStyle separatorStyle))rg_separatorStyle;

#pragma mark - 注册cell
-(UITableView* (^)(Class registerClass,NSString *Identifier))rg_registerClassAndIdentifier;

#pragma mark - 注册组View
-(UITableView* (^)(Class registerClass,NSString *Identifier))rg_HeaderFooterIdentifierAndIdentifier;

#pragma mark - delegate和dataSource
-(UITableView* (^)(id dataSource ,id delegate))rg_dataSourceAndDelegate;
-(UITableView* (^)(id dataSource))rg_dataSource;
-(UITableView* (^)(id delegate))rg_delegate;

#pragma mark - 行高
-(UITableView* (^)(CGFloat rowHeight))rg_rowHeight;

#pragma mark - 头部View
-(UITableView* (^)(UIView *tableHeaderView))rg_tableHeaderView;

#pragma mark - 尾部View
-(UITableView* (^)(UIView *tableFooterView))rg_tableFooterView;

@end

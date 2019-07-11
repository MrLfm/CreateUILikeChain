//
//  XJTableViewMaker.h
//  Test
//
//  Created by gamesirDev on 9/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XJTableViewMaker : NSObject

/// 代理
@property (nonatomic, copy, readonly) XJTableViewMaker* (^delegate)(id object);
/// 数据源
@property (nonatomic, copy, readonly) XJTableViewMaker* (^dataSource)(id object);
/// 注册cell
@property (nonatomic, copy, readonly) XJTableViewMaker* (^registerClassWithIdentifier)(Class aClass, NSString* identifier);

#pragma mark - UIView公共属性

/// 父View
@property (nonatomic, copy, readonly) XJTableViewMaker* (^addTo)(UIView* superview);
/// frame
@property (nonatomic, copy, readonly) XJTableViewMaker* (^frame)(CGRect frame);
/// bounds
@property (nonatomic, copy, readonly) XJTableViewMaker* (^bounds)(CGRect bounds);
/// center
@property (nonatomic, copy, readonly) XJTableViewMaker* (^center)(CGPoint center);
/// 背景颜色
@property (nonatomic, copy, readonly) XJTableViewMaker* (^backgroundColor)(UIColor* color);
/// 是否隐藏
@property (nonatomic, copy, readonly) XJTableViewMaker* (^hidden)(BOOL flag);
/// 标签
@property (nonatomic, copy, readonly) XJTableViewMaker* (^tag)(NSInteger tag);
/// 可交互性
@property (nonatomic, copy, readonly) XJTableViewMaker* (^userInteractionEnabled)(BOOL flag);
/// layer.cornerRadius
@property (nonatomic, copy, readonly) XJTableViewMaker* (^layerCornerRadius)(CGFloat radius);
/// layer.maskToBounds
@property (nonatomic, copy, readonly) XJTableViewMaker* (^layerMaskToBounds)(BOOL flag);
/// layer.borderWidth：边框宽度
@property (nonatomic, copy, readonly) XJTableViewMaker* (^layerBorderWidth)(CGFloat width);
/// layer.borderColor：边框颜色，传入UIColor值
@property (nonatomic, copy, readonly) XJTableViewMaker* (^layerBorderColor)(UIColor* color);

@end


@interface UITableView (XJMaker)
/// 链式创建UITableView
+ (instancetype)xj_make:(void(^)(XJTableViewMaker* make))make style:(UITableViewStyle)style;
@end

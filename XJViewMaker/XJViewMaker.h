//
//  XJViewMaker.h
//  Test
//
//  Created by gamesirDev on 8/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XJViewMaker : NSObject

/// clipsToBounds
@property (nonatomic, copy, readonly) XJViewMaker* (^clipsToBounds)(BOOL flag);
/// 父View
@property (nonatomic, copy, readonly) XJViewMaker* (^addTo)(UIView* superview);
/// frame
@property (nonatomic, copy, readonly) XJViewMaker* (^frame)(CGRect frame);
/// bounds
@property (nonatomic, copy, readonly) XJViewMaker* (^bounds)(CGRect bounds);
/// center
@property (nonatomic, copy, readonly) XJViewMaker* (^center)(CGPoint center);
/// 背景颜色
@property (nonatomic, copy, readonly) XJViewMaker* (^backgroundColor)(UIColor* color);
/// 是否隐藏
@property (nonatomic, copy, readonly) XJViewMaker* (^hidden)(BOOL flag);
/// 标签
@property (nonatomic, copy, readonly) XJViewMaker* (^tag)(NSInteger tag);
/// 可交互性
@property (nonatomic, copy, readonly) XJViewMaker* (^userInteractionEnabled)(BOOL flag);
/// layer.cornerRadius
@property (nonatomic, copy, readonly) XJViewMaker* (^layerCornerRadius)(CGFloat radius);
/// layer.maskToBounds
@property (nonatomic, copy, readonly) XJViewMaker* (^layerMaskToBounds)(BOOL flag);
/// layer.borderWidth：边框宽度
@property (nonatomic, copy, readonly) XJViewMaker* (^layerBorderWidth)(CGFloat width);
/// layer.borderColor：边框颜色，传入UIColor值
@property (nonatomic, copy, readonly) XJViewMaker* (^layerBorderColor)(UIColor* color);
/// tintColor
@property (nonatomic, copy, readonly) XJViewMaker* (^tintColor)(UIColor* color);
/// alpha
@property (nonatomic, copy, readonly) XJViewMaker* (^alpha)(CGFloat alpha);
/// contentMode
@property (nonatomic, copy, readonly) XJViewMaker* (^contentMode)(UIViewContentMode mode);
@end

@interface UIView (XJMaker)
/// 链式创建UIView
+ (instancetype)xj_make:(void(^)(XJViewMaker* make))make;
@end

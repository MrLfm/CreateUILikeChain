//
//  XJButtonMaker.h
//  Test
//
//  Created by gamesirDev on 9/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^XJButtonMakerActionBlock)(UIButton *button);

@interface XJButtonMaker : NSObject

/// 标题
@property (nonatomic, copy, readonly) XJButtonMaker* (^title)(NSString* title, UIControlState state);
/// 标题颜色
@property (nonatomic, copy, readonly) XJButtonMaker* (^titleColor)(UIColor* color, UIControlState state);
/// 标题字体
@property (nonatomic, copy, readonly) XJButtonMaker* (^titleFont)(UIFont* font);
/// 选择状态
@property (nonatomic, copy, readonly) XJButtonMaker* (^selected)(BOOL flag);
/// 图片
@property (nonatomic, copy, readonly) XJButtonMaker* (^image)(UIImage* image, UIControlState state);
/// 图片名称
@property (nonatomic, copy, readonly) XJButtonMaker* (^backgroundImage)(UIImage* image, UIControlState state);
/// 富文本
@property (nonatomic, copy, readonly) XJButtonMaker* (^attributedString)(NSString* title, UIColor* color, UIFont* font, UIControlState state);
/// touchUpInside点击事件
@property (nonatomic, copy, readonly) XJButtonMaker* (^action)(XJButtonMakerActionBlock block);
/// 点击事件
@property (nonatomic, copy, readonly) XJButtonMaker* (^actionWithEvents)(XJButtonMakerActionBlock block, UIControlEvents events);
/// 处于highlighted状态时调整图片
@property (nonatomic, copy, readonly) XJButtonMaker* (^adjustsImageWhenHighlighted)(BOOL flag);


#pragma mark - UIView公共属性

/// clipsToBounds
@property (nonatomic, copy, readonly) XJButtonMaker* (^clipsToBounds)(BOOL flag);
/// 父View
@property (nonatomic, copy, readonly) XJButtonMaker* (^addTo)(UIView* superview);
/// frame
@property (nonatomic, copy, readonly) XJButtonMaker* (^frame)(CGRect frame);
/// bounds
@property (nonatomic, copy, readonly) XJButtonMaker* (^bounds)(CGRect bounds);
/// center
@property (nonatomic, copy, readonly) XJButtonMaker* (^center)(CGPoint center);
/// 背景颜色
@property (nonatomic, copy, readonly) XJButtonMaker* (^backgroundColor)(UIColor* color);
/// 是否隐藏
@property (nonatomic, copy, readonly) XJButtonMaker* (^hidden)(BOOL flag);
/// 标签
@property (nonatomic, copy, readonly) XJButtonMaker* (^tag)(NSInteger tag);
/// 可交互性
@property (nonatomic, copy, readonly) XJButtonMaker* (^userInteractionEnabled)(BOOL flag);
/// layer.cornerRadius
@property (nonatomic, copy, readonly) XJButtonMaker* (^layerCornerRadius)(CGFloat radius);
/// layer.maskToBounds
@property (nonatomic, copy, readonly) XJButtonMaker* (^layerMaskToBounds)(BOOL flag);
/// layer.borderWidth：边框宽度
@property (nonatomic, copy, readonly) XJButtonMaker* (^layerBorderWidth)(CGFloat width);
/// layer.borderColor：边框颜色，传入UIColor值
@property (nonatomic, copy, readonly) XJButtonMaker* (^layerBorderColor)(UIColor* color);
/// tintColor
@property (nonatomic, copy, readonly) XJButtonMaker* (^tintColor)(UIColor* color);
/// alpha
@property (nonatomic, copy, readonly) XJButtonMaker* (^alpha)(CGFloat alpha);
/// contentMode
@property (nonatomic, copy, readonly) XJButtonMaker* (^contentMode)(UIViewContentMode mode);
@end


@interface UIButton (XJMaker)
/// 链式创建UIButton
+ (instancetype)xj_make:(void(^)(XJButtonMaker* make))make;
- (instancetype)xj_make:(void(^)(XJButtonMaker* make))make;

@end

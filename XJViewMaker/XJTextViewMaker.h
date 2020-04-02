//
//  XJTextViewMaker.h
//  Animation
//
//  Created by gamesirDev on 26/12/2019.
//  Copyright © 2019 Lfm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XJTextViewMaker : NSObject
/// 代理
@property (nonatomic, copy, readonly) XJTextViewMaker* (^delegate)(id object);
/// 文本
@property (nonatomic, copy, readonly) XJTextViewMaker* (^text)(NSString* string);
/// 文本颜色
@property (nonatomic, copy, readonly) XJTextViewMaker* (^textColor)(UIColor* color);
/// 字体
@property (nonatomic, copy, readonly) XJTextViewMaker* (^font)(UIFont* font);
/// 占位符
@property (nonatomic, copy, readonly) XJTextViewMaker* (^placeholder)(UILabel* label);
/// 占位符字体颜色
@property (nonatomic, copy, readonly) XJTextViewMaker* (^placeholderColor)(UIColor* color);
/// 富文本
@property (nonatomic, copy, readonly) XJTextViewMaker* (^attributedText)(NSAttributedString* atbString);
/// 文本对齐方式
@property (nonatomic, copy, readonly) XJTextViewMaker* (^textAlignment)(NSTextAlignment alignment);
/// 安全输入
@property (nonatomic, copy, readonly) XJTextViewMaker* (^secureTextEntry)(BOOL flag);

#pragma mark - UIView公共属性

/// clipsToBounds
@property (nonatomic, copy, readonly) XJTextViewMaker* (^clipsToBounds)(BOOL flag);
/// 父View
@property (nonatomic, copy, readonly) XJTextViewMaker* (^addTo)(UIView* superview);
/// frame
@property (nonatomic, copy, readonly) XJTextViewMaker* (^frame)(CGRect frame);
/// bounds
@property (nonatomic, copy, readonly) XJTextViewMaker* (^bounds)(CGRect bounds);
/// center
@property (nonatomic, copy, readonly) XJTextViewMaker* (^center)(CGPoint center);
/// 背景颜色
@property (nonatomic, copy, readonly) XJTextViewMaker* (^backgroundColor)(UIColor* color);
/// 是否隐藏
@property (nonatomic, copy, readonly) XJTextViewMaker* (^hidden)(BOOL flag);
/// 标签
@property (nonatomic, copy, readonly) XJTextViewMaker* (^tag)(NSInteger tag);
/// 可交互性
@property (nonatomic, copy, readonly) XJTextViewMaker* (^userInteractionEnabled)(BOOL flag);
/// layer.cornerRadius
@property (nonatomic, copy, readonly) XJTextViewMaker* (^layerCornerRadius)(CGFloat radius);
/// layer.maskToBounds
@property (nonatomic, copy, readonly) XJTextViewMaker* (^layerMaskToBounds)(BOOL flag);
/// layer.borderWidth：边框宽度
@property (nonatomic, copy, readonly) XJTextViewMaker* (^layerBorderWidth)(CGFloat width);
/// layer.borderColor：边框颜色，传入UIColor值
@property (nonatomic, copy, readonly) XJTextViewMaker* (^layerBorderColor)(UIColor* color);
/// tintColor
@property (nonatomic, copy, readonly) XJTextViewMaker* (^tintColor)(UIColor* color);
/// alpha
@property (nonatomic, copy, readonly) XJTextViewMaker* (^alpha)(CGFloat alpha);
/// contentMode
@property (nonatomic, copy, readonly) XJTextViewMaker* (^contentMode)(UIViewContentMode mode);
@end

NS_ASSUME_NONNULL_END

@interface UITextView (XJMaker)
/// 链式创建UITextView
+ (instancetype)xj_make:(void(^)(XJTextViewMaker* make))make;
@end

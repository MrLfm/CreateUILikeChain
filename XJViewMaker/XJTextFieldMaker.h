//
//  XJTextFieldMaker.h
//  Test
//
//  Created by gamesirDev on 12/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XJTextFieldMaker : NSObject

/// 代理
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^delegate)(id object);
/// 文本
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^text)(NSString* string);
/// 文本颜色
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^textColor)(UIColor* color);
/// 字体
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^font)(UIFont* font);
/// 占位符
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^placeholder)(NSString* string);
/// 占位符字体颜色
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^placeholderColor)(UIColor* color);
/// 富文本
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^attributedText)(NSAttributedString* atbString);
/// 文本对齐方式
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^textAlignment)(NSTextAlignment alignment);
/// 开始编辑的时候清空文本
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^clearsOnBeginEditing)(BOOL flag);
/// 清空按钮的模式
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^clearButtonMode)(UITextFieldViewMode mode);
/// 左侧View
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^leftView)(UIView* view);
/// 左侧View的模式
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^leftViewMode)(UITextFieldViewMode mode);
/// border风格
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^borderStyle)(UITextBorderStyle style);
/// 安全输入
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^secureTextEntry)(BOOL flag);

#pragma mark - UIView公共属性

/// clipsToBounds
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^clipsToBounds)(BOOL flag);
/// 父View
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^addTo)(UIView* superview);
/// frame
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^frame)(CGRect frame);
/// bounds
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^bounds)(CGRect bounds);
/// center
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^center)(CGPoint center);
/// 背景颜色
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^backgroundColor)(UIColor* color);
/// 是否隐藏
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^hidden)(BOOL flag);
/// 标签
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^tag)(NSInteger tag);
/// 可交互性
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^userInteractionEnabled)(BOOL flag);
/// layer.cornerRadius
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^layerCornerRadius)(CGFloat radius);
/// layer.maskToBounds
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^layerMaskToBounds)(BOOL flag);
/// layer.borderWidth：边框宽度
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^layerBorderWidth)(CGFloat width);
/// layer.borderColor：边框颜色，传入UIColor值
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^layerBorderColor)(UIColor* color);
/// tintColor
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^tintColor)(UIColor* color);
/// alpha
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^alpha)(CGFloat alpha);
/// contentMode
@property (nonatomic, copy, readonly) XJTextFieldMaker* (^contentMode)(UIViewContentMode mode);
@end

NS_ASSUME_NONNULL_END


@interface UITextField (XJMaker)
/// 链式创建UITextField
+ (instancetype)xj_make:(void(^)(XJTextFieldMaker* make))make;
@end

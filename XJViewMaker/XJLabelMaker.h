//
//  XJLabelMaker.h
//  Test
//
//  Created by gamesirDev on 9/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XJLabelMaker : NSObject

/// 文本
@property (nonatomic, copy, readonly) XJLabelMaker* (^text)(NSString* text);
/// 文本颜色
@property (nonatomic, copy, readonly) XJLabelMaker* (^textColor)(UIColor* color);
/// 字体
@property (nonatomic, copy, readonly) XJLabelMaker* (^font)(UIFont* font);
/// 富文本
@property (nonatomic, copy, readonly) XJLabelMaker* (^attributedText)(NSAttributedString* atbString);
/// 文本对齐方式
@property (nonatomic, copy, readonly) XJLabelMaker* (^textAlignment)(NSTextAlignment alignment);
/// 文本行数
@property (nonatomic, copy, readonly) XJLabelMaker* (^numberOfLines)(NSInteger lines);
/// 未显示文字(...)的展示位置
@property (nonatomic, copy, readonly) XJLabelMaker* (^lineBreakMode)(NSLineBreakMode mode);

#pragma mark - UIView公共属性

/// 父View
@property (nonatomic, copy, readonly) XJLabelMaker* (^addTo)(UIView* superview);
/// frame
@property (nonatomic, copy, readonly) XJLabelMaker* (^frame)(CGRect frame);
/// bounds
@property (nonatomic, copy, readonly) XJLabelMaker* (^bounds)(CGRect bounds);
/// center
@property (nonatomic, copy, readonly) XJLabelMaker* (^center)(CGPoint center);
/// 背景颜色
@property (nonatomic, copy, readonly) XJLabelMaker* (^backgroundColor)(UIColor* color);
/// 是否隐藏
@property (nonatomic, copy, readonly) XJLabelMaker* (^hidden)(BOOL flag);
/// 标签
@property (nonatomic, copy, readonly) XJLabelMaker* (^tag)(NSInteger tag);
/// 可交互性
@property (nonatomic, copy, readonly) XJLabelMaker* (^userInteractionEnabled)(BOOL flag);
/// layer.cornerRadius
@property (nonatomic, copy, readonly) XJLabelMaker* (^layerCornerRadius)(CGFloat radius);
/// layer.maskToBounds
@property (nonatomic, copy, readonly) XJLabelMaker* (^layerMaskToBounds)(BOOL flag);
/// layer.borderWidth：边框宽度
@property (nonatomic, copy, readonly) XJLabelMaker* (^layerBorderWidth)(CGFloat width);
/// layer.borderColor：边框颜色，传入UIColor值
@property (nonatomic, copy, readonly) XJLabelMaker* (^layerBorderColor)(UIColor* color);

@end


@interface UILabel (XJMaker)
/// 链式创建UILabel
+ (instancetype)xj_make:(void(^)(XJLabelMaker* make))make;
@end

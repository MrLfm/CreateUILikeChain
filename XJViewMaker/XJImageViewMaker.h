//
//  XJImageViewMaker.h
//  Test
//
//  Created by gamesirDev on 9/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XJImageViewMaker : NSObject

/// 图片
@property (nonatomic, copy, readonly) XJImageViewMaker* (^image)(UIImage* image);
/// 图片名称
@property (nonatomic, copy, readonly) XJImageViewMaker* (^imageName)(NSString* imageName);

#pragma mark - UIView公共属性

/// clipsToBounds
@property (nonatomic, copy, readonly) XJImageViewMaker* (^clipsToBounds)(BOOL flag);
/// 父View
@property (nonatomic, copy, readonly) XJImageViewMaker* (^addTo)(UIView* superview);
/// frame
@property (nonatomic, copy, readonly) XJImageViewMaker* (^frame)(CGRect frame);
/// bounds
@property (nonatomic, copy, readonly) XJImageViewMaker* (^bounds)(CGRect bounds);
/// center
@property (nonatomic, copy, readonly) XJImageViewMaker* (^center)(CGPoint center);
/// 背景颜色
@property (nonatomic, copy, readonly) XJImageViewMaker* (^backgroundColor)(UIColor* color);
/// 是否隐藏
@property (nonatomic, copy, readonly) XJImageViewMaker* (^hidden)(BOOL flag);
/// 标签
@property (nonatomic, copy, readonly) XJImageViewMaker* (^tag)(NSInteger tag);
/// 可交互性
@property (nonatomic, copy, readonly) XJImageViewMaker* (^userInteractionEnabled)(BOOL flag);
/// layer.cornerRadius
@property (nonatomic, copy, readonly) XJImageViewMaker* (^layerCornerRadius)(CGFloat radius);
/// layer.maskToBounds
@property (nonatomic, copy, readonly) XJImageViewMaker* (^layerMaskToBounds)(BOOL flag);
/// layer.borderWidth：边框宽度
@property (nonatomic, copy, readonly) XJImageViewMaker* (^layerBorderWidth)(CGFloat width);
/// layer.borderColor：边框颜色，传入UIColor值
@property (nonatomic, copy, readonly) XJImageViewMaker* (^layerBorderColor)(UIColor* color);
/// tintColor
@property (nonatomic, copy, readonly) XJImageViewMaker* (^tintColor)(UIColor* color);
/// alpha
@property (nonatomic, copy, readonly) XJImageViewMaker* (^alpha)(CGFloat alpha);
/// contentMode
@property (nonatomic, copy, readonly) XJImageViewMaker* (^contentMode)(UIViewContentMode mode);
@end


@interface UIImageView (XJMaker)
/// 链式创建UIImageView
+ (instancetype)xj_make:(void(^)(XJImageViewMaker* make))make;
@end

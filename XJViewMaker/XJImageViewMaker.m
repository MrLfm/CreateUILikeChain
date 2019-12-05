//
//  XJImageViewMaker.m
//  Test
//
//  Created by gamesirDev on 9/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import "XJImageViewMaker.h"

@interface XJImageViewMaker ()
@property (nonatomic, retain, readwrite) UIImageView*           imageView;
@end

@implementation XJImageViewMaker

- (instancetype)initView {
    self.imageView = [UIImageView new];
    
    return self;
}

- (XJImageViewMaker* (^)(UIImage *))image {
    return ^XJImageViewMaker* (UIImage* image){
        self.imageView.image = image;
        return self;
    };
}

- (XJImageViewMaker* (^)(NSString *))imageName {
    return ^XJImageViewMaker* (NSString* imageName){
        if (imageName && imageName.length > 0) {
            self.imageView.image = [UIImage imageNamed:imageName];
        }
        return self;
    };
}

#pragma mark - UIView公共属性

- (XJImageViewMaker *(^)(BOOL))clipsToBounds {
    return ^XJImageViewMaker* (BOOL flag) {
        self.imageView.clipsToBounds = flag;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(UIView * _Nonnull))addTo {
    return ^XJImageViewMaker* (UIView* superview) {
        if (superview) {
            [superview addSubview:self.imageView];
        }
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(CGRect))frame {
    return ^XJImageViewMaker* (CGRect frame) {
        self.imageView.frame = frame;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(CGRect))bounds {
    return ^XJImageViewMaker* (CGRect bounds) {
        self.imageView.bounds = bounds;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(CGPoint))center {
    return ^XJImageViewMaker* (CGPoint center) {
        self.imageView.center = center;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^XJImageViewMaker* (UIColor* color) {
        self.imageView.backgroundColor = color;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(BOOL))hidden {
    return ^XJImageViewMaker* (BOOL flag) {
        self.imageView.hidden = flag;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(NSInteger))tag {
    return ^XJImageViewMaker* (NSInteger tag) {
        self.imageView.tag = tag;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^XJImageViewMaker* (BOOL flag) {
        self.imageView.userInteractionEnabled = flag;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(CGFloat))layerCornerRadius {
    return ^XJImageViewMaker* (CGFloat radius) {
        self.imageView.layer.cornerRadius = radius;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(BOOL))layerMaskToBounds {
    return ^XJImageViewMaker* (BOOL flag) {
        self.imageView.layer.masksToBounds = flag;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(CGFloat))layerBorderWidth {
    return ^XJImageViewMaker* (CGFloat width) {
        self.imageView.layer.borderWidth = width;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(UIColor* _Nonnull))layerBorderColor {
    return ^XJImageViewMaker* (UIColor* color) {
        self.imageView.layer.borderColor = color.CGColor;
        return self;
    };
}

- (XJImageViewMaker* _Nonnull (^)(UIColor* _Nonnull))tintColor {
    return ^XJImageViewMaker* (UIColor* color) {
        self.imageView.tintColor = color;
        return self;
    };
}

- (XJImageViewMaker *(^)(CGFloat))alpha {
    return ^XJImageViewMaker* (CGFloat alpha) {
        self.imageView.alpha = alpha;
        return self;
    };
}

- (XJImageViewMaker *(^)(UIViewContentMode))contentMode {
    return ^XJImageViewMaker* (UIViewContentMode mode) {
        self.imageView.contentMode = mode;
        return self;
    };
}

@end


/// UIImageView分类的实现
@implementation UIImageView (XJMaker)

+ (instancetype)xj_make:(void (^)(XJImageViewMaker* ))make {
    
    XJImageViewMaker* maker = [[XJImageViewMaker alloc] initView];
    if (make) {
        make(maker);
    }
    
    return maker.imageView;
}

@end

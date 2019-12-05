//
//  XJViewMaker.m
//  Test
//
//  Created by gamesirDev on 8/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import "XJViewMaker.h"

@interface XJViewMaker ()
@property (nonatomic, retain, readwrite) UIView*           view;
@end

@implementation XJViewMaker

- (instancetype)initView {
    self.view = [UIView new];
    
    return self;
}

- (XJViewMaker *(^)(BOOL))clipsToBounds {
    return ^XJViewMaker* (BOOL flag) {
        self.view.clipsToBounds = flag;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(UIView * _Nonnull))addTo {
    return ^XJViewMaker* (UIView* superview) {
        if (superview) {
            [superview addSubview:self.view];
        }
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(CGRect))frame {
    return ^XJViewMaker* (CGRect frame) {
        self.view.frame = frame;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(CGRect))bounds {
    return ^XJViewMaker* (CGRect bounds) {
        self.view.bounds = bounds;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(CGPoint))center {
    return ^XJViewMaker* (CGPoint center) {
        self.view.center = center;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^XJViewMaker* (UIColor* color) {
        self.view.backgroundColor = color;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(BOOL))hidden {
    return ^XJViewMaker* (BOOL flag) {
        self.view.hidden = flag;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(NSInteger))tag {
    return ^XJViewMaker* (NSInteger tag) {
        self.view.tag = tag;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^XJViewMaker* (BOOL flag) {
        self.view.userInteractionEnabled = flag;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(CGFloat))layerCornerRadius {
    return ^XJViewMaker* (CGFloat radius) {
        self.view.layer.cornerRadius = radius;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(BOOL))layerMaskToBounds {
    return ^XJViewMaker* (BOOL flag) {
        self.view.layer.masksToBounds = flag;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(CGFloat))layerBorderWidth {
    return ^XJViewMaker* (CGFloat width) {
        self.view.layer.borderWidth = width;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(UIColor* _Nonnull))layerBorderColor {
    return ^XJViewMaker* (UIColor* color) {
        self.view.layer.borderColor = color.CGColor;
        return self;
    };
}

- (XJViewMaker* _Nonnull (^)(UIColor* _Nonnull))tintColor {
    return ^XJViewMaker* (UIColor* color) {
        self.view.tintColor = color;
        return self;
    };
}

- (XJViewMaker *(^)(CGFloat))alpha {
    return ^XJViewMaker* (CGFloat alpha) {
        self.view.alpha = alpha;
        return self;
    };
}

- (XJViewMaker *(^)(UIViewContentMode))contentMode {
    return ^XJViewMaker* (UIViewContentMode mode) {
        self.view.contentMode = mode;
        return self;
    };
}

@end


/// UIView分类的实现
@implementation UIView (XJMaker)

+ (instancetype)xj_make:(void (^)(XJViewMaker* ))make {
    
    XJViewMaker* maker = [[XJViewMaker alloc] initView];
    if (make) {
        make(maker);
    }
    
    return maker.view;
}

@end

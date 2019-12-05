//
//  XJLabelMaker.m
//  Test
//
//  Created by gamesirDev on 9/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import "XJLabelMaker.h"

@interface XJLabelMaker ()
@property (nonatomic, retain, readwrite) UILabel*           label;
@end

@implementation XJLabelMaker

- (instancetype)initView {
    self.label = [UILabel new];
    
    return self;
}


- (XJLabelMaker *(^)(NSString *))text {
    return ^XJLabelMaker *(NSString *text) {
        self.label.text = text;
        return self;
    };
}

- (XJLabelMaker *(^)(UIColor *))textColor {
    return ^XJLabelMaker *(UIColor *color) {
        self.label.textColor = color;
        return self;
    };
}

- (XJLabelMaker *(^)(NSAttributedString *))attributedText {
    return ^XJLabelMaker *(NSAttributedString *atbString) {
        self.label.attributedText = atbString;
        return self;
    };
}

- (XJLabelMaker *(^)(UIFont *))font {
    return ^XJLabelMaker *(UIFont *font) {
        self.label.font = font;
        return self;
    };
}

- (XJLabelMaker *(^)(NSTextAlignment))textAlignment {
    return ^XJLabelMaker *(NSTextAlignment alignment) {
        self.label.textAlignment = alignment;
        return self;
    };
}

- (XJLabelMaker *(^)(NSInteger))numberOfLines {
    return ^XJLabelMaker *(NSInteger lines) {
        self.label.numberOfLines = lines;
        return self;
    };
}

- (XJLabelMaker *(^)(NSLineBreakMode))lineBreakMode {
    return ^XJLabelMaker *(NSLineBreakMode mode) {
        self.label.lineBreakMode = mode;
        return self;
    };
}


#pragma mark - UIView公共属性

- (XJLabelMaker *(^)(BOOL))clipsToBounds {
    return ^XJLabelMaker* (BOOL flag) {
        self.label.clipsToBounds = flag;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(UIView * _Nonnull))addTo {
    return ^XJLabelMaker* (UIView* superview) {
        if (superview) {
            [superview addSubview:self.label];
        }
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(CGRect))frame {
    return ^XJLabelMaker* (CGRect frame) {
        self.label.frame = frame;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(CGRect))bounds {
    return ^XJLabelMaker* (CGRect bounds) {
        self.label.bounds = bounds;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(CGPoint))center {
    return ^XJLabelMaker* (CGPoint center) {
        self.label.center = center;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^XJLabelMaker* (UIColor* color) {
        self.label.backgroundColor = color;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(BOOL))hidden {
    return ^XJLabelMaker* (BOOL flag) {
        self.label.hidden = flag;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(NSInteger))tag {
    return ^XJLabelMaker* (NSInteger tag) {
        self.label.tag = tag;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^XJLabelMaker* (BOOL flag) {
        self.label.userInteractionEnabled = flag;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(CGFloat))layerCornerRadius {
    return ^XJLabelMaker* (CGFloat radius) {
        self.label.layer.cornerRadius = radius;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(BOOL))layerMaskToBounds {
    return ^XJLabelMaker* (BOOL flag) {
        self.label.layer.masksToBounds = flag;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(CGFloat))layerBorderWidth {
    return ^XJLabelMaker* (CGFloat width) {
        self.label.layer.borderWidth = width;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(UIColor* _Nonnull))layerBorderColor {
    return ^XJLabelMaker* (UIColor* color) {
        self.label.layer.borderColor = color.CGColor;
        return self;
    };
}

- (XJLabelMaker* _Nonnull (^)(UIColor* _Nonnull))tintColor {
    return ^XJLabelMaker* (UIColor* color) {
        self.label.tintColor = color;
        return self;
    };
}

- (XJLabelMaker *(^)(CGFloat))alpha {
    return ^XJLabelMaker* (CGFloat alpha) {
        self.label.alpha = alpha;
        return self;
    };
}

- (XJLabelMaker *(^)(UIViewContentMode))contentMode {
    return ^XJLabelMaker* (UIViewContentMode mode) {
        self.label.contentMode = mode;
        return self;
    };
}

@end


/// UILabel分类的实现
@implementation UILabel (XJMaker)

+ (instancetype)xj_make:(void (^)(XJLabelMaker *))make {
    
    XJLabelMaker *maker = [[XJLabelMaker alloc] initView];
    if (make) {
        make(maker);
    }
    
    return maker.label;
}

@end

//
//  XJTextViewMaker.m
//  Animation
//
//  Created by gamesirDev on 26/12/2019.
//  Copyright © 2019 Lfm. All rights reserved.
//

#import "XJTextViewMaker.h"

@interface XJTextViewMaker ()
@property (nonatomic, retain) UITextView*              textView;
@end

@implementation XJTextViewMaker

- (instancetype)initView {
    self.textView = [UITextView new];
    
    return self;
}

- (XJTextViewMaker *(^)(NSString *))text {
    return ^XJTextViewMaker *(NSString *text) {
        self.textView.text = text;
        return self;
    };
}

- (XJTextViewMaker *(^)(UIColor *))textColor {
    return ^XJTextViewMaker *(UIColor *color) {
        self.textView.textColor = color;
        return self;
    };
}

- (XJTextViewMaker *(^)(NSAttributedString *))attributedText {
    return ^XJTextViewMaker *(NSAttributedString *atbString) {
        self.textView.attributedText = atbString;
        return self;
    };
}

- (XJTextViewMaker *(^)(UIFont *))font {
    return ^XJTextViewMaker *(UIFont *font) {
        self.textView.font = font;
        return self;
    };
}

- (XJTextViewMaker *(^)(NSTextAlignment))textAlignment {
    return ^XJTextViewMaker *(NSTextAlignment alignment) {
        self.textView.textAlignment = alignment;
        return self;
    };
}

- (XJTextViewMaker* (^)(id))delegate {
    return ^XJTextViewMaker* (id object) {
        self.textView.delegate = object;
        return self;
    };
}

- (XJTextViewMaker * _Nonnull (^)(UILabel * _Nonnull))placeholder {
    return ^XJTextViewMaker* (UILabel* label) {
        [self.textView setValue:label forKey:@"_placeholderLabel"];
        return self;
    };
}

- (XJTextViewMaker * _Nonnull (^)(UIColor * _Nonnull))placeholderColor {
    return ^XJTextViewMaker* (UIColor* color) {
        [self.textView setValue:color
                      forKeyPath:@"_placeholderLabel.textColor"];
        return self;
    };
}

- (XJTextViewMaker * _Nonnull (^)(BOOL))secureTextEntry {
    return ^XJTextViewMaker* (BOOL flag) {
        self.textView.secureTextEntry = flag;
        return self;
    };
}

#pragma mark - UIView公共属性

- (XJTextViewMaker *(^)(BOOL))clipsToBounds {
    return ^XJTextViewMaker* (BOOL flag) {
        self.textView.clipsToBounds = flag;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(UIView * _Nonnull))addTo {
    return ^XJTextViewMaker* (UIView* superview) {
        if (superview) {
            [superview addSubview:self.textView];
        }
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(CGRect))frame {
    return ^XJTextViewMaker* (CGRect frame) {
        self.textView.frame = frame;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(CGRect))bounds {
    return ^XJTextViewMaker* (CGRect bounds) {
        self.textView.bounds = bounds;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(CGPoint))center {
    return ^XJTextViewMaker* (CGPoint center) {
        self.textView.center = center;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^XJTextViewMaker* (UIColor* color) {
        self.textView.backgroundColor = color;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(BOOL))hidden {
    return ^XJTextViewMaker* (BOOL flag) {
        self.textView.hidden = flag;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(NSInteger))tag {
    return ^XJTextViewMaker* (NSInteger tag) {
        self.textView.tag = tag;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^XJTextViewMaker* (BOOL flag) {
        self.textView.userInteractionEnabled = flag;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(CGFloat))layerCornerRadius {
    return ^XJTextViewMaker* (CGFloat radius) {
        self.textView.layer.cornerRadius = radius;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(BOOL))layerMaskToBounds {
    return ^XJTextViewMaker* (BOOL flag) {
        self.textView.layer.masksToBounds = flag;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(CGFloat))layerBorderWidth {
    return ^XJTextViewMaker* (CGFloat width) {
        self.textView.layer.borderWidth = width;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(UIColor* _Nonnull))layerBorderColor {
    return ^XJTextViewMaker* (UIColor* color) {
        self.textView.layer.borderColor = color.CGColor;
        return self;
    };
}

- (XJTextViewMaker* _Nonnull (^)(UIColor* _Nonnull))tintColor {
    return ^XJTextViewMaker* (UIColor* color) {
        self.textView.tintColor = color;
        return self;
    };
}

- (XJTextViewMaker *(^)(CGFloat))alpha {
    return ^XJTextViewMaker* (CGFloat alpha) {
        self.textView.alpha = alpha;
        return self;
    };
}

- (XJTextViewMaker *(^)(UIViewContentMode))contentMode {
    return ^XJTextViewMaker* (UIViewContentMode mode) {
        self.textView.contentMode = mode;
        return self;
    };
}

@end


/// UITextView分类的实现
@implementation UITextView (XJMaker)

+ (instancetype)xj_make:(void (^)(XJTextViewMaker *))make {
    
    XJTextViewMaker *maker = [[XJTextViewMaker alloc] initView];
    if (make) {
        make(maker);
    }
    
    return maker.textView;
}

@end

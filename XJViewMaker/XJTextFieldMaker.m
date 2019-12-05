//
//  XJTextFieldMaker.m
//  Test
//
//  Created by gamesirDev on 12/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import "XJTextFieldMaker.h"

@interface XJTextFieldMaker ()
@property (nonatomic, retain) UITextField*              textField;
@end

@implementation XJTextFieldMaker

- (instancetype)initView {
    self.textField = [UITextField new];
    
    return self;
}

- (XJTextFieldMaker *(^)(NSString *))text {
    return ^XJTextFieldMaker *(NSString *text) {
        self.textField.text = text;
        return self;
    };
}

- (XJTextFieldMaker *(^)(UIColor *))textColor {
    return ^XJTextFieldMaker *(UIColor *color) {
        self.textField.textColor = color;
        return self;
    };
}

- (XJTextFieldMaker *(^)(NSAttributedString *))attributedText {
    return ^XJTextFieldMaker *(NSAttributedString *atbString) {
        self.textField.attributedText = atbString;
        return self;
    };
}

- (XJTextFieldMaker *(^)(UIFont *))font {
    return ^XJTextFieldMaker *(UIFont *font) {
        self.textField.font = font;
        return self;
    };
}

- (XJTextFieldMaker *(^)(NSTextAlignment))textAlignment {
    return ^XJTextFieldMaker *(NSTextAlignment alignment) {
        self.textField.textAlignment = alignment;
        return self;
    };
}

- (XJTextFieldMaker* (^)(id))delegate {
    return ^XJTextFieldMaker* (id object) {
        self.textField.delegate = object;
        return self;
    };
}

- (XJTextFieldMaker * _Nonnull (^)(NSString * _Nonnull))placeholder {
    return ^XJTextFieldMaker* (NSString* string) {
        self.textField.placeholder = string;
        return self;
    };
}

- (XJTextFieldMaker * _Nonnull (^)(UIColor * _Nonnull))placeholderColor {
    return ^XJTextFieldMaker* (UIColor* color) {
        [self.textField setValue:color
                      forKeyPath:@"_placeholderLabel.textColor"];
        return self;
    };
}

- (XJTextFieldMaker * _Nonnull (^)(BOOL))clearsOnBeginEditing {
    return ^XJTextFieldMaker* (BOOL flag) {
        self.textField.clearsOnBeginEditing = flag;
        return self;
    };
}

- (XJTextFieldMaker * _Nonnull (^)(UIView * _Nonnull))leftView {
    return ^XJTextFieldMaker* (UIView* view) {
        self.textField.leftView = view;
        return self;
    };
}

- (XJTextFieldMaker * _Nonnull (^)(UITextFieldViewMode))leftViewMode {
    return ^XJTextFieldMaker* (UITextFieldViewMode mode) {
        self.textField.leftViewMode = mode;
        return self;
    };
}

- (XJTextFieldMaker * _Nonnull (^)(UITextFieldViewMode))clearButtonMode {
    return ^XJTextFieldMaker* (UITextFieldViewMode mode) {
        self.textField.clearButtonMode = mode;
        return self;
    };
}

- (XJTextFieldMaker * _Nonnull (^)(UITextBorderStyle))borderStyle {
    return ^XJTextFieldMaker* (UITextBorderStyle style) {
        self.textField.borderStyle = style;
        return self;
    };
}

- (XJTextFieldMaker * _Nonnull (^)(BOOL))secureTextEntry {
    return ^XJTextFieldMaker* (BOOL flag) {
        self.textField.secureTextEntry = flag;
        return self;
    };
}

#pragma mark - UIView公共属性

- (XJTextFieldMaker *(^)(BOOL))clipsToBounds {
    return ^XJTextFieldMaker* (BOOL flag) {
        self.textField.clipsToBounds = flag;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(UIView * _Nonnull))addTo {
    return ^XJTextFieldMaker* (UIView* superview) {
        if (superview) {
            [superview addSubview:self.textField];
        }
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(CGRect))frame {
    return ^XJTextFieldMaker* (CGRect frame) {
        self.textField.frame = frame;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(CGRect))bounds {
    return ^XJTextFieldMaker* (CGRect bounds) {
        self.textField.bounds = bounds;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(CGPoint))center {
    return ^XJTextFieldMaker* (CGPoint center) {
        self.textField.center = center;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^XJTextFieldMaker* (UIColor* color) {
        self.textField.backgroundColor = color;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(BOOL))hidden {
    return ^XJTextFieldMaker* (BOOL flag) {
        self.textField.hidden = flag;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(NSInteger))tag {
    return ^XJTextFieldMaker* (NSInteger tag) {
        self.textField.tag = tag;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^XJTextFieldMaker* (BOOL flag) {
        self.textField.userInteractionEnabled = flag;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(CGFloat))layerCornerRadius {
    return ^XJTextFieldMaker* (CGFloat radius) {
        self.textField.layer.cornerRadius = radius;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(BOOL))layerMaskToBounds {
    return ^XJTextFieldMaker* (BOOL flag) {
        self.textField.layer.masksToBounds = flag;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(CGFloat))layerBorderWidth {
    return ^XJTextFieldMaker* (CGFloat width) {
        self.textField.layer.borderWidth = width;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(UIColor* _Nonnull))layerBorderColor {
    return ^XJTextFieldMaker* (UIColor* color) {
        self.textField.layer.borderColor = color.CGColor;
        return self;
    };
}

- (XJTextFieldMaker* _Nonnull (^)(UIColor* _Nonnull))tintColor {
    return ^XJTextFieldMaker* (UIColor* color) {
        self.textField.tintColor = color;
        return self;
    };
}

- (XJTextFieldMaker *(^)(CGFloat))alpha {
    return ^XJTextFieldMaker* (CGFloat alpha) {
        self.textField.alpha = alpha;
        return self;
    };
}

- (XJTextFieldMaker *(^)(UIViewContentMode))contentMode {
    return ^XJTextFieldMaker* (UIViewContentMode mode) {
        self.textField.contentMode = mode;
        return self;
    };
}

@end


/// UITextField分类的实现
@implementation UITextField (XJMaker)

+ (instancetype)xj_make:(void (^)(XJTextFieldMaker *))make {
    
    XJTextFieldMaker *maker = [[XJTextFieldMaker alloc] initView];
    if (make) {
        make(maker);
    }
    
    return maker.textField;
}

@end

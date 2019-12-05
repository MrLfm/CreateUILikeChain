//
//  XJButtonMaker.m
//  Test
//
//  Created by gamesirDev on 9/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import "XJButtonMaker.h"
#import <objc/message.h>

@interface XJButtonMaker ()
@property (nonatomic, retain, readwrite) UIButton*           button;
@end

@implementation XJButtonMaker

- (instancetype)initView {
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    return self;
}


/// Title
- (XJButtonMaker* (^)(NSString *, UIControlState))title {
    /// 数据由括号内传来的值决定
    return ^XJButtonMaker* (NSString* title, UIControlState state) {
        [self.button setTitle:title forState:state];
        
        return self;
    };
}

/// TitleColor
- (XJButtonMaker* (^)(UIColor *, UIControlState))titleColor {
    return ^XJButtonMaker* (UIColor* color, UIControlState state) {
        [self.button setTitleColor:color forState:state];
        
        return self;
    };
}

/// Font
- (XJButtonMaker *(^)(UIFont *))titleFont {
    return ^XJButtonMaker* (UIFont* font) {
        self.button.titleLabel.font = font;
        
        return self;
    };
}

/// Selected
- (XJButtonMaker *(^)(BOOL))selected {
    return ^XJButtonMaker* (BOOL flag) {
        self.button.selected = flag;
        
        return self;
    };
}

/// Image
- (XJButtonMaker* (^)(UIImage *, UIControlState))image {
    return ^XJButtonMaker* (UIImage* image, UIControlState state) {
        [self.button setImage:image forState:state];
        
        return self;
    };
}

- (XJButtonMaker* (^)(UIImage *, UIControlState))backgroundImage {
    return ^XJButtonMaker* (UIImage* image, UIControlState state) {
        [self.button setBackgroundImage:image forState:state];
        
        return self;
    };
}

/// AttributedString
- (XJButtonMaker* (^)(NSString *, UIColor *, UIFont *, UIControlState))attributedString {
    return ^XJButtonMaker* (NSString* title, UIColor* color, UIFont *font, UIControlState state) {
        NSAssert(title.length > 0, @"设置attributedString的标题不能为空");
        NSMutableDictionary<NSAttributedStringKey, id> *attributes = [NSMutableDictionary dictionary];
        if (font) {
            [attributes setValue:font forKey:NSFontAttributeName];
        }
        if (color) {
            [attributes setValue:color forKey:NSForegroundColorAttributeName];
        }
        NSMutableAttributedString *titleAttributedStr = [[NSMutableAttributedString alloc]initWithString:title attributes:attributes];
        [self.button setAttributedTitle:titleAttributedStr forState:state];
        
        return self;
    };
}

- (XJButtonMaker *(^)(BOOL))adjustsImageWhenHighlighted {
    return ^XJButtonMaker* (BOOL flag) {
        self.button.adjustsImageWhenHighlighted = flag;
        
        return self;
    };
}

#pragma mark - 按钮点击事件

- (XJButtonMaker* (^)(XJButtonMakerActionBlock))action {
    return ^XJButtonMaker* (XJButtonMakerActionBlock action) {
        [self createrActionBlock:^(UIButton *button) {
            if (action) {
                action(self.button);
            }
        } controlEvent:UIControlEventTouchUpInside];
        
        return self;
    };
}

- (XJButtonMaker* (^)(XJButtonMakerActionBlock, UIControlEvents))actionWithEvents {
    return ^XJButtonMaker* (XJButtonMakerActionBlock action, UIControlEvents events) {
        [self createrActionBlock:^(UIButton *button) {
            if (action) {
                action(self.button);
            }
        } controlEvent:events];
        
        return self;
    };
}

- (void)createrActionBlock:(XJButtonMakerActionBlock)actionBlock controlEvent:(UIControlEvents)event {
    if(actionBlock) {
        objc_setAssociatedObject(self, @selector(buttonClickAction:), actionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
    
    [self.button addTarget:self action:@selector(buttonClickAction:) forControlEvents:event];
}

- (void)buttonClickAction:(UIButton *)button {
    XJButtonMakerActionBlock block = objc_getAssociatedObject(self, _cmd);
    if(block){
        block(button);
    }
}

#pragma mark - UIView公共属性

- (XJButtonMaker *(^)(BOOL))clipsToBounds {
    return ^XJButtonMaker* (BOOL flag) {
        self.button.clipsToBounds = flag;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(UIView * _Nonnull))addTo {
    return ^XJButtonMaker* (UIView* superview) {
        if (superview) {
            [superview addSubview:self.button];
        }
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(CGRect))frame {
    return ^XJButtonMaker* (CGRect frame) {
        self.button.frame = frame;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(CGRect))bounds {
    return ^XJButtonMaker* (CGRect bounds) {
        self.button.bounds = bounds;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(CGPoint))center {
    return ^XJButtonMaker* (CGPoint center) {
        self.button.center = center;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^XJButtonMaker* (UIColor* color) {
        self.button.backgroundColor = color;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(BOOL))hidden {
    return ^XJButtonMaker* (BOOL flag) {
        self.button.hidden = flag;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(NSInteger))tag {
    return ^XJButtonMaker* (NSInteger tag) {
        self.button.tag = tag;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^XJButtonMaker* (BOOL flag) {
        self.button.userInteractionEnabled = flag;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(CGFloat))layerCornerRadius {
    return ^XJButtonMaker* (CGFloat radius) {
        self.button.layer.cornerRadius = radius;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(BOOL))layerMaskToBounds {
    return ^XJButtonMaker* (BOOL flag) {
        self.button.layer.masksToBounds = flag;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(CGFloat))layerBorderWidth {
    return ^XJButtonMaker* (CGFloat width) {
        self.button.layer.borderWidth = width;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(UIColor* _Nonnull))layerBorderColor {
    return ^XJButtonMaker* (UIColor* color) {
        self.button.layer.borderColor = color.CGColor;
        return self;
    };
}

- (XJButtonMaker* _Nonnull (^)(UIColor* _Nonnull))tintColor {
    return ^XJButtonMaker* (UIColor* color) {
        self.button.tintColor = color;
        return self;
    };
}

- (XJButtonMaker *(^)(CGFloat))alpha {
    return ^XJButtonMaker* (CGFloat alpha) {
        self.button.alpha = alpha;
        return self;
    };
}

- (XJButtonMaker *(^)(UIViewContentMode))contentMode {
    return ^XJButtonMaker* (UIViewContentMode mode) {
        self.button.contentMode = mode;
        return self;
    };
}

@end


/// UIButton分类的实现
@implementation UIButton (XJMaker)

+ (instancetype)xj_make:(void (^)(XJButtonMaker* ))make {
    
    XJButtonMaker* maker = [[XJButtonMaker alloc] initView];
    if (make) {
        make(maker);
    }
    
    return maker.button;
}

- (instancetype)xj_make:(void (^)(XJButtonMaker *))make {
    XJButtonMaker* maker = [[XJButtonMaker alloc] initView];
    if (make) {
        make(maker);
    }
    
    return maker.button;
}

@end

//
//  XJTableViewMaker.m
//  Test
//
//  Created by gamesirDev on 9/7/2019.
//  Copyright © 2019 gamesirDev. All rights reserved.
//

#import "XJTableViewMaker.h"

@interface XJTableViewMaker ()
@property (nonatomic, retain, readwrite) UITableView*           tableView;
@end

@implementation XJTableViewMaker

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    
    return self;
}

- (XJTableViewMaker* (^)(id))delegate {
    return ^XJTableViewMaker* (id object) {
        self.tableView.delegate = object;
        return self;
    };
}

- (XJTableViewMaker* (^)(id))dataSource {
    return ^XJTableViewMaker* (id object) {
        self.tableView.dataSource = object;
        return self;
    };
}

- (XJTableViewMaker* (^)(__unsafe_unretained Class))registerClass {
    return ^XJTableViewMaker* (Class aClass) {
        [self.tableView registerClass:[aClass class] forCellReuseIdentifier:NSStringFromClass(aClass)];
        return self;
    };
}

- (XJTableViewMaker *(^)(UITableViewCellSeparatorStyle))separatorStyle {
    return ^XJTableViewMaker* (UITableViewCellSeparatorStyle style) {
        self.tableView.separatorStyle = style;
        return self;
    };
}

- (XJTableViewMaker *(^)(UIColor *))separatorColor {
    return ^XJTableViewMaker* (UIColor* color) {
        self.tableView.separatorColor = color;
        return self;
    };
}

- (XJTableViewMaker *(^)(UIEdgeInsets))separatorInset {
    return ^XJTableViewMaker* (UIEdgeInsets insets) {
        self.tableView.separatorInset = insets;
        return self;
    };
}

- (XJTableViewMaker *(^)(UIView *))tableFooterView {
    return ^XJTableViewMaker* (UIView* view) {
        self.tableView.tableFooterView = view;
        return self;
    };
}

- (XJTableViewMaker *(^)(CGFloat))estimatedRowHeight {
    return ^XJTableViewMaker* (CGFloat height) {
        self.tableView.estimatedRowHeight = height;
        return self;
    };
}

#pragma mark - UIView公共属性

- (XJTableViewMaker *(^)(BOOL))clipsToBounds {
    return ^XJTableViewMaker* (BOOL flag) {
        self.tableView.clipsToBounds = flag;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(UIView * _Nonnull))addTo {
    return ^XJTableViewMaker* (UIView* superview) {
        if (superview) {
            [superview addSubview:self.tableView];
        }
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(CGRect))frame {
    return ^XJTableViewMaker* (CGRect frame) {
        self.tableView.frame = frame;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(CGRect))bounds {
    return ^XJTableViewMaker* (CGRect bounds) {
        self.tableView.bounds = bounds;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(CGPoint))center {
    return ^XJTableViewMaker* (CGPoint center) {
        self.tableView.center = center;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^XJTableViewMaker* (UIColor* color) {
        self.tableView.backgroundColor = color;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(BOOL))hidden {
    return ^XJTableViewMaker* (BOOL flag) {
        self.tableView.hidden = flag;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(NSInteger))tag {
    return ^XJTableViewMaker* (NSInteger tag) {
        self.tableView.tag = tag;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^XJTableViewMaker* (BOOL flag) {
        self.tableView.userInteractionEnabled = flag;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(CGFloat))layerCornerRadius {
    return ^XJTableViewMaker* (CGFloat radius) {
        self.tableView.layer.cornerRadius = radius;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(BOOL))layerMaskToBounds {
    return ^XJTableViewMaker* (BOOL flag) {
        self.tableView.layer.masksToBounds = flag;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(CGFloat))layerBorderWidth {
    return ^XJTableViewMaker* (CGFloat width) {
        self.tableView.layer.borderWidth = width;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(UIColor* _Nonnull))layerBorderColor {
    return ^XJTableViewMaker* (UIColor* color) {
        self.tableView.layer.borderColor = color.CGColor;
        return self;
    };
}

- (XJTableViewMaker* _Nonnull (^)(UIColor* _Nonnull))tintColor {
    return ^XJTableViewMaker* (UIColor* color) {
        self.tableView.tintColor = color;
        return self;
    };
}

- (XJTableViewMaker *(^)(CGFloat))alpha {
    return ^XJTableViewMaker* (CGFloat alpha) {
        self.tableView.alpha = alpha;
        return self;
    };
}

- (XJTableViewMaker *(^)(UIViewContentMode))contentMode {
    return ^XJTableViewMaker* (UIViewContentMode mode) {
        self.tableView.contentMode = mode;
        return self;
    };
}

@end


/// UITableView分类的实现
@implementation UITableView (XJMaker)

+ (instancetype)xj_make:(void (^)(XJTableViewMaker* ))make style:(UITableViewStyle)style {
    
    XJTableViewMaker* maker = [[XJTableViewMaker alloc] initWithStyle:style];
    if (make) {
        make(maker);
    }
    
    return maker.tableView;
}
@end

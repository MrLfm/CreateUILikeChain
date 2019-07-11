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

- (XJTableViewMaker* (^)(__unsafe_unretained Class, NSString *))registerClassWithIdentifier {
    return ^XJTableViewMaker* (Class aClass, NSString* identifier) {
        [self.tableView registerClass:aClass forCellReuseIdentifier:identifier];
        return self;
    };
}

#pragma mark - UIView公共属性

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

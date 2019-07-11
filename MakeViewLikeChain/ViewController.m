//
//  ViewController.m
//  MakeViewLikeChain
//
//  Created by gamesirDev on 11/7/2019.
//  Copyright © 2019 Lfm. All rights reserved.
//

#import "ViewController.h"
#import "XJViewMakerHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
}

- (void)createUI {
    [UILabel xj_make:^(XJLabelMaker *make) {
        make.addTo(self.view)
            .text(@"Hello, world!")
            .frame(CGRectMake(0, 0, 150, 40))
            .center(self.view.center)
            .backgroundColor(UIColor.purpleColor)
            .textColor(UIColor.whiteColor)
            .font([UIFont systemFontOfSize:12.f])
            .textAlignment(NSTextAlignmentCenter)
            .lineBreakMode(NSLineBreakByTruncatingMiddle)
            .layerCornerRadius(10.)
            .layerMaskToBounds(YES)
            .layerBorderColor(UIColor.redColor)
            .layerBorderWidth(5.);
    }];
}

@end

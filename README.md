# Create UI like chain
like this:

````
    self.restoreButton = [UIButton xj_make:^(XJButtonMaker *make) {
        make.addTo(self.backupView)
        .backgroundColor(NORMAL_BLUE)
        .layerCornerRadius(5.)
        .title(i18n(@"Restore"), UIControlStateNormal)
        .titleFont(PingFangMedium(13.))
        .action(^(UIButton *button) {
        });
    }];
````

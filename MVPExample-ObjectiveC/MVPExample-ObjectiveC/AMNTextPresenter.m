//
//  AMNTextPresenter.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNTextPresenter.h"

@implementation AMNTextPresenter

- (instancetype)initWithView:(UIView<AMNTextPresenterProtocol> *)view
{
    if (self = [self init]) {
        self.view = view;
    }

    return self;
}

- (void)presentWithModel:(AMNText *)model viewController:(UIViewController *)viewController
{
    self.text = model;
    self.viewController = viewController;
    [self present];
}

- (void)present
{
    [self.view setText:self.text.text];
}

@end

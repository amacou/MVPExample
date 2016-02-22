//
//  AMNPhotoPresenter.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNPhotoPresenter.h"

@implementation AMNPhotoPresenter

- (instancetype)initWithView:(UIView<AMNPhotoProtocol> *)view
{
    if (self = [self init]) {
        self.view = view;
    }

    return self;
}

- (void)presentWithModel:(AMNPhoto *)model viewController:(UIViewController *)viewController
{
    self.photo = model;
    self.viewController = viewController;
    [self present];
}

- (void)present
{
    [self.view setImage:self.photo.image];
}

@end

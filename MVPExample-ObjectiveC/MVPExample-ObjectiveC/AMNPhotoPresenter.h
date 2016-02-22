//
//  AMNPhotoPresenter.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMNPhoto.h"
#import "AMNPresenterProtocol.h"

@protocol AMNPhotoProtocol

- (void)setImage:(UIImage *)image;

@end

@interface AMNPhotoPresenter : NSObject <AMNPresenterProtocol>

@property (nonatomic, weak) NSObject<AMNPhotoProtocol> *view;
@property (nonatomic) AMNPhoto *photo;
@property (nonatomic) UIViewController *viewController;

- (instancetype)initWithView:(UIView<AMNPhotoProtocol> *)view;
- (void)presentWithModel:(AMNPhoto *)model viewController:(UIViewController *)viewController;
- (void)present;

@end

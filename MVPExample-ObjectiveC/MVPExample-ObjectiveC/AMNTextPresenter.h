//
//  AMNTextPresenter.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMNPresenterProtocol.h"
#import "AMNText.h"

@protocol AMNTextPresenterProtocol

- (void)setText:(NSString *)text;

@end

@interface AMNTextPresenter : NSObject <AMNPresenterProtocol>

@property (nonatomic) NSObject<AMNTextPresenterProtocol> *view;
@property (nonatomic) UIViewController *viewController;
@property (nonatomic) AMNText *text;

- (instancetype)initWithView:(UIView<AMNTextPresenterProtocol> *)view;
- (void)presentWithModel:(AMNText *)model viewController:(UIViewController *)viewController;
- (void)present;

@end

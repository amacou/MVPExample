//
//  AMNPresenterProtocol.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AMNPresenterProtocol
- (void)setView:(NSObject *)view;
- (void)setViewController:(UIViewController *)viewController;
@optional
- (void)present;
- (void)presentWithModel:(id)model viewController:(UIViewController *)viewController;
@end


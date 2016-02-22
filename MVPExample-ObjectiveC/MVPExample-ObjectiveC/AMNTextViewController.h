//
//  AMNTextViewController.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/22.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMNTextPresenter.h"

@interface AMNTextViewController : UIViewController <AMNTextPresenterProtocol>
@property (nonatomic) AMNTextPresenter *presenter;
@end

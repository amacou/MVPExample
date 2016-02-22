//
//  AMNTimelineTableViewPresenter.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMNPresenterProtocol.h"

@interface AMNTimelineTableViewPresenter : NSObject <UITableViewDataSource, UITableViewDelegate, AMNPresenterProtocol>
@property (nonatomic, weak) IBOutlet UITableView *view;
@property (nonatomic, weak) IBOutlet UIViewController *viewController;
@end

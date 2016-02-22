//
//  AMNTextTableViewCell.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMNTextPresenter.h"

@interface AMNTextTableViewCell : UITableViewCell <AMNTextPresenterProtocol>
@property (nonatomic) AMNTextPresenter *presenter;
@end

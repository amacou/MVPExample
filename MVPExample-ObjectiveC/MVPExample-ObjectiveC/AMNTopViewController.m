//
//  AMNTopViewController.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNTopViewController.h"

@interface AMNTopViewController ()
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@end

@implementation AMNTopViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.presenter = [[AMNTimelineTableViewPresenter alloc] initWithView: self.tableView];
    self.presenter.viewController = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

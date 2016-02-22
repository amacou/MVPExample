//
//  AMNTextViewController.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/22.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNTextViewController.h"

@interface AMNTextViewController ()
@property (nonatomic, weak) IBOutlet UITextView *textView;
@end

@implementation AMNTextViewController

- (void)awakeFromNib
{
    self.presenter = [AMNTextPresenter new];
    self.presenter.view = self;
    self.presenter.viewController = self;

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.presenter present];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setText:(NSString *)text
{
    self.textView.text = text;
}

@end

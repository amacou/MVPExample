//
//  AMNTimelineTableViewPresenter.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNTimelineTableViewPresenter.h"
#import "AMNTimeline.h"
#import "AMNTextTableViewCell.h"
#import "AMNPhotoTableViewCell.h"
#import "AMNPhotoListTableViewCell.h"
#import "AMNImageViewController.h"
#import "AMNTextViewController.h"

@interface AMNTimelineTableViewPresenter()
@property (nonatomic) AMNTimeline *timeline;
@end

@implementation AMNTimelineTableViewPresenter

- (instancetype)init
{
    if (self = [super init]) {
        self.timeline = [AMNTimeline new];
    }

    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timeline.posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id post = self.timeline.posts[indexPath.row];

    NSString *identifier = [NSString stringWithFormat:@"%@Cell", NSStringFromClass([post class])];

    id cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if ([cell respondsToSelector:@selector(presenter)]) {
        NSObject<AMNPresenterProtocol> *presenter = [cell presenter];
        [presenter presentWithModel:post viewController:self.viewController];
    }

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160.f;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id post = self.timeline.posts[indexPath.row];
    if ([post isKindOfClass:[AMNPhoto class]]) {
        AMNImageViewController *imageViewController = [[self.viewController storyboard] instantiateViewControllerWithIdentifier: NSStringFromClass([AMNImageViewController class])];
        imageViewController.presenter.photo = post;
        [[self.viewController navigationController] pushViewController:imageViewController animated:YES];
    } else if ([post isKindOfClass:[AMNText class]]) {
        AMNTextViewController *textViewController = [[self.viewController storyboard] instantiateViewControllerWithIdentifier: NSStringFromClass([AMNTextViewController class])];
        textViewController.presenter.text = post;
        [[self.viewController navigationController] pushViewController:textViewController animated:YES];
    }

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end

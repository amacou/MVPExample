//
//  AMNImageViewController.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/22.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNImageViewController.h"

@interface AMNImageViewController ()
@property (nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation AMNImageViewController

- (void)awakeFromNib
{
    self.presenter = [AMNPhotoPresenter new];
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

- (void)setImage:(UIImage *)image
{
    self.imageView.image = image;
}

@end

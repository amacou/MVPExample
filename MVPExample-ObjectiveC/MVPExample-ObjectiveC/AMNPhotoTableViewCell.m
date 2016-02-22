//
//  AMNPhotoTableViewCell.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNPhotoTableViewCell.h"
@interface AMNPhotoTableViewCell()

@property (nonatomic) IBOutlet UIImageView *photoImageView;

@end

@implementation AMNPhotoTableViewCell

- (void)awakeFromNib
{
    self.presenter = [[AMNPhotoPresenter alloc] initWithView:self];
}

- (void)setImage:(UIImage *)image
{
    self.photoImageView.image = image;
}

@end

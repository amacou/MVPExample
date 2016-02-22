//
//  AMNPhotoCollectionViewCell.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNPhotoCollectionViewCell.h"

@interface AMNPhotoCollectionViewCell()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation AMNPhotoCollectionViewCell

- (void)awakeFromNib
{
    self.presenter = [[AMNPhotoPresenter alloc] initWithView:self];
}

- (void)setImage:(UIImage *)image
{
    self.imageView.image = image;
}

@end

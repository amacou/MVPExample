//
//  AMNPhotoListTableViewCell.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNPhotoListTableViewCell.h"

@interface AMNPhotoListTableViewCell()

@property (nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation AMNPhotoListTableViewCell

- (void)awakeFromNib
{
    self.presenter = [[AMNPhotoListCollectionViewPresenter alloc] initWithView:self.collectionView];
}

@end

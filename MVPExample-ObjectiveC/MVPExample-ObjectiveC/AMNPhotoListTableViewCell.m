//
//  AMNPhotoListTableViewCell.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNPhotoListTableViewCell.h"

@interface AMNPhotoListTableViewCell()

@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;

@end

@implementation AMNPhotoListTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.presenter = [[AMNPhotoListCollectionViewPresenter alloc] initWithView:self.collectionView];
}

@end

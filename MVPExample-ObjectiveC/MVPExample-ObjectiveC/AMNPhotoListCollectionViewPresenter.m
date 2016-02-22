//
//  AMNPhotoListCollectionViewPresenter.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNPhotoListCollectionViewPresenter.h"
#import "AMNPhotoCollectionViewCell.h"
#import "AMNImageViewController.h"

@implementation AMNPhotoListCollectionViewPresenter

- (instancetype)initWithView:(UICollectionView *)view
{
    if (self = [super init]) {
        self.view = view;
        self.view.delegate = self;
        self.view.dataSource = self;
    }

    return self;
}

- (void)presentWithModel:(AMNPhotoList *)model viewController:(UIViewController *)viewController
{
    self.photoList = model;
    self.viewController = viewController;
    [self present];
}

- (void)present
{
    [self.view reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photoList.list.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    AMNPhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AMNPhotoCollectionViewCell" forIndexPath:indexPath];
    cell.presenter.photo = self.photoList.list[indexPath.row];
    [cell.presenter present];

    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(CGRectGetHeight(self.view.bounds), CGRectGetHeight(self.view.bounds));
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    id post = self.photoList.list[indexPath.row];
    if ([post isKindOfClass:[AMNPhoto class]]) {
        AMNImageViewController *imageViewController = [[self.viewController storyboard] instantiateViewControllerWithIdentifier: NSStringFromClass([AMNImageViewController class])];
        imageViewController.presenter.photo = post;
        [[self.viewController navigationController] pushViewController:imageViewController animated:YES];
    }

    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}
@end

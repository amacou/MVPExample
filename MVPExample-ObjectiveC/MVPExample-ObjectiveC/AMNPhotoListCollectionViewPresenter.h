//
//  AMNPhotoListCollectionViewPresenter.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMNPresenterProtocol.h"
#import "AMNPhotoList.h"

@interface AMNPhotoListCollectionViewPresenter : NSObject <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, AMNPresenterProtocol>
@property (nonatomic, weak) UICollectionView *view;
@property (nonatomic, weak) UIViewController *viewController;
@property (nonatomic) AMNPhotoList *photoList;
- (instancetype)initWithView:(UICollectionView *)view;
- (void)presentWithModel:(AMNPhotoList *)model viewController:(UIViewController *)viewController;
- (void)present;
@end

//
//  AMNImageViewController.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/22.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMNPhotoPresenter.h"
@interface AMNImageViewController : UIViewController<AMNPhotoProtocol>
@property (nonatomic) AMNPhotoPresenter *presenter;
@end

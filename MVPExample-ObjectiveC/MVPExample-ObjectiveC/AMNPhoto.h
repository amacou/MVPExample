//
//  AMNPhotoPost.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AMNPhoto : NSObject
- (instancetype)initWithImage:(UIImage *)image;
@property (nonatomic) UIImage *image;
@end

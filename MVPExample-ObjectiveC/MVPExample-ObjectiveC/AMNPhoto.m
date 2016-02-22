//
//  AMNPhotoPost.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNPhoto.h"

@implementation AMNPhoto

- (instancetype)init
{
    if (self = [super init]) {
        int index = arc4random_uniform(8) + 1;
        self.image = [UIImage imageNamed:[NSString stringWithFormat:@"cat%zd", index]];
    }

    return self;
}

- (instancetype)initWithImage:(UIImage *)image
{
    if (self = [super init]) {
        self.image = image;
    }

    return self;
}

@end

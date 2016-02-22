//
//  AMNTimeline.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNTimeline.h"
#import "AMNText.h"
#import "AMNPhoto.h"
#import "AMNPhotoList.h"

@implementation AMNTimeline

- (instancetype)init
{
    if (self = [super init]) {
        self.posts = [NSMutableArray new];
        for (int i=0; i<20; i++) {
            NSArray *classes = @[@"AMNText", @"AMNPhoto", @"AMNPhotoList"];
            [self.posts addObject:[NSClassFromString(classes[arc4random_uniform(3)]) new]];
        }
    }

    return self;
}
@end

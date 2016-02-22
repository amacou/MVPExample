//
//  AMNPhotoList.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNPhotoList.h"
#import "AMNPhoto.h"

@implementation AMNPhotoList

- (instancetype)init
{
    if (self = [super init]) {
        int index = arc4random_uniform(2);
        NSArray *listNames = @[@"cat", @"canada_spring"];
        [self loadPhotoWithName:listNames[index]];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)listName
{
    if (self = [super init]) {
        [self loadPhotoWithName:listName];
    }

    return self;
}

- (void)loadPhotoWithName:(NSString *)name
{
    self.list = [NSMutableArray array];

    for (int i = 1; i < 10; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%zd", name,i]];
        [self.list addObject:[[AMNPhoto alloc] initWithImage:image]];
    }
}

@end

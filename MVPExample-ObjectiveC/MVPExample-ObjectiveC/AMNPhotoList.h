//
//  AMNPhotoList.h
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/19.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMNPhotoList : NSObject

@property (nonatomic) NSMutableArray *list;
- (instancetype)initWithName:(NSString *)listName;
@end

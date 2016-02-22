//
//  AMNTextTableViewCell.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNTextTableViewCell.h"

@interface AMNTextTableViewCell()

@property (nonatomic) IBOutlet UILabel *label;

@end

@implementation AMNTextTableViewCell

- (void)awakeFromNib
{
    self.presenter = [[AMNTextPresenter alloc] initWithView:self];
}

- (void)setText:(NSString *)text
{
    self.label.text = text;
}

@end
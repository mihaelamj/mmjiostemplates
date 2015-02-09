//
//  BaseTableViewCell.m
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

#pragma mark -
#pragma mark Init

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addCustomSubviews];
        [self setSubviewConstraints];
        [self customizeViews];
    }
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (CGFloat)realHeightWithCustomObject:(id)customObject
{
    [self customize:customObject];
    return [self realHeight];
}

- (CGFloat)realHeight
{
    [self setNeedsLayout];
    [self layoutIfNeeded];
    CGSize size = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height;
}

#pragma mark Template

- (void)addCustomSubviews //abstract
{
}

- (void)setSubviewConstraints //abstract
{
}

- (void)customizeViews //abstract
{
    
}

#pragma mark Overrides

+ (CGFloat)recomendedCellHeight
{
    return 0;
}

- (void)customize:(id)customObject //abstract
{
    //
}

#pragma mark Static

+ (NSString *)reuseIdentifier
{
    NSString *reuseID = [NSString stringWithFormat:@"%@-%@", NSStringFromClass([self class]), @"TableCellID"];
    return reuseID;
}

#pragma mark -
#pragma mark Framework Overrides

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end

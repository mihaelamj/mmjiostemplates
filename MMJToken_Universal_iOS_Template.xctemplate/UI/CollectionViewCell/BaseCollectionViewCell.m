//
//  BaseCollectionViewCell.m
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import "BaseCollectionViewCell.h"

@implementation BaseCollectionViewCell

#pragma mark -
#pragma mark Init

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addCustomSubviews];
        [self setSubviewConstraints];
    }
    return self;
}

#pragma mark -
#pragma mark Public Methods

#pragma mark Template

- (void)addCustomSubviews //abstract
{
    //
}

- (void)setSubviewConstraints //abstract
{
    //
}

#pragma mark Overrides

+ (CGSize)recomendedCellSize
{
    return CGSizeZero;
}

- (void)customize:(id)customObject //abstract
{
    //
}

- (CGSize)actualSize
{
    return CGSizeZero;
}

#pragma mark Static

+ (NSString *)reuseIdentifier
{
    NSString *reuseID = [NSString stringWithFormat:@"%@-%@", NSStringFromClass([self class]), @"CollectionCellID"];
    return reuseID;
}

@end

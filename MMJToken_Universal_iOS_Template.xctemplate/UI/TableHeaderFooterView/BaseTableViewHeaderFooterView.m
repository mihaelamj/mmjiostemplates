//
//  BaseTableViewHeaderFooterView.m
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import "BaseTableViewHeaderFooterView.h"

@implementation BaseTableViewHeaderFooterView

#pragma mark -
#pragma mark Public Methods

#pragma mark Overrides

+ (CGFloat)recomendedHeight
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
    NSString *reuseID = [NSString stringWithFormat:@"%@-%@", NSStringFromClass([self class]), @"TableHeaderFooterID"];
    return reuseID;
}

@end

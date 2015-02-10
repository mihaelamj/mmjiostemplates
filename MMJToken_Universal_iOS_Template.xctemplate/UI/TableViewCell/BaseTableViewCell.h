//
//  BaseTableViewCell.h
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import <UIKit/UIKit.h>

//auto layout
// #import <Masonry/Masonry.h>

@interface BaseTableViewCell : UITableViewCell

//static
+ (CGFloat)recomendedCellHeight;
+ (NSString *)reuseIdentifier;

//dynamic height
- (CGFloat)realHeightWithCustomObject:(id)customObject;
- (CGFloat)realHeight;

//abstract
- (void)customize:(id)customObject; //abstract

//template methods
- (void)addCustomSubviews; //abstract
- (void)setSubviewConstraints; //abstract
- (void)customizeViews; //abstract

@end

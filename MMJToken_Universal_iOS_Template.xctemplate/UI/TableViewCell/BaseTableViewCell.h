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

/**
 *  Virtual class defining contract for making custom table view cell classes.
 *
 *  Each custom table view cell class needs to expose static methods for determining it's height.
 *
 *  Reuse identifier is static and generated from cell class name.
 *
 *  It also has dynamic methods for determinig height at runtime.
 */

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

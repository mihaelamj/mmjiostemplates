//
//  BaseCollectionViewCell.h
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import <UIKit/UIKit.h>

//auto layout
// #import <Masonry/Masonry.h>

/**
 *  Virtual class defining contract for making custom collection view cell classes.
 *
 *  Each custom collection view cell class needs to expose static methods for determining it's height.
 *
 *  Reuse identifier is static and generated from cell class name.
 *
 *  It also has dynamic methods for determinig height at runtime.
 */

@interface BaseCollectionViewCell : UICollectionViewCell

//static
+ (CGSize)recomendedCellSize;
+ (NSString *)reuseIdentifier;

//abstract
- (void)customize:(id)customObject; //abstract

//template methods
- (void)addCustomSubviews; //abstract
- (void)setSubviewConstraints; //abstract

- (CGSize)actualSize;

@end

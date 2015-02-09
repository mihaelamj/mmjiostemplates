//
//  BaseCollectionViewCell.h
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import <UIKit/UIKit.h>

//auto layout
#import <Masonry/Masonry.h>

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

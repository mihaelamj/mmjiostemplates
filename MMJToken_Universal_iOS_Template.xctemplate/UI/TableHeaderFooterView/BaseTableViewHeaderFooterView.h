//
//  BaseTableViewHeaderFooterView.h
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import <UIKit/UIKit.h>

//auto layout
// #import <Masonry/Masonry.h>

/**
 *  Virtual class defining contract for making custom UITableViewHeaderFooterView classes.
 *
 *  Each custom class needs to expose static methods for determining it's height.
 *
 *  Reuse identifier is static and generated from class name.
 *
 */

@interface BaseTableViewHeaderFooterView : UITableViewHeaderFooterView

+ (CGFloat)recomendedHeight;
+ (NSString *)reuseIdentifier;

- (void)customize:(id)customObject;

@end

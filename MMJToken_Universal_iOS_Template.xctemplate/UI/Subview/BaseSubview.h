//
//  BaseSubview.h
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import <UIKit/UIKit.h>

//auto layout
#import <Masonry/Masonry.h>

@interface BaseSubview : UIView

+ (CGFloat)recomendedHeight;

- (CGFloat)realHeight;

@end

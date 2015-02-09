//
//  BaseViewController.m
//  StarterApp
//
//  Created by Mihaela Mihaljević Jakić on 24/01/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //move content below navigation bar
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    //set navigation bar logo
    //    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"kindergarten_logo"]];
    //    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigation_bar"] forBarMetrics:UIBarMetricsDefault];
    
    //set custom back title
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
}

@end

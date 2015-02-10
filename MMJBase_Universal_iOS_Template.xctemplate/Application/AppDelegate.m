//
//  AppDelegate.m
//  App
//
//  Created by Mihaela Mihaljević Jakić on 03/02/15.
//  Copyright (c) 2015 Mihaela Mihaljević Jakić. All rights reserved.
//

#import "AppDelegate.h"

//consts
// #import "TokenConsts.h"

//config
//#import <AFNetworking/AFNetworkActivityIndicatorManager.h>

@interface AppDelegate ()

@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation AppDelegate


#pragma mark -
#pragma mark Launch

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:screenBounds];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    //set root view controller
    self.window.rootViewController = self.navigationController;
    
    //@INFO: call if needed
    //    [self askForLocalNotifications:application];
    
    //@INFO: set global Application settings
//    [self configureApplication];
    
    //@TEST: add delay to show the launch screen - REMOVE ME!!!
    [NSThread sleepForTimeInterval:3];
    
    [self.window makeKeyAndVisible];
    
    FWLog(@"Hello");
    
    return YES;
}

- (void)askForLocalNotifications:(UIApplication *)application;
{
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert categories:nil];
    [application registerUserNotificationSettings:settings];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark -
#pragma mark Private Methods

- (void)configureApplication
{
    //set activity indicator for all AFNetworking operations (required by Apple)
//    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
//    
//    //set cache for requests
//    NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:8 * sizeMB diskCapacity:20 * sizeMB diskPath:nil];
//    [NSURLCache setSharedURLCache:URLCache];
    
    //    UINavigationBar *navigationBarAppearance = [UINavigationBar appearanceWhenContainedIn:[UINavigationController class], nil];
    
    //apperance style
//    UINavigationBar *mainNavigationBarAppearance = [UINavigationBar appearance];
//    [mainNavigationBarAppearance setTintColor:[UIColor colorWithStyle:ColorStyleHilight]];
//    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithStyle:ColorStyleLight]];
    
    //    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"NEW TITLE" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
    //set status bar style
    //    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //set navigation bar style
    //    [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"ic_back_arrow"]];
    //    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"ic_back_arrow"]];
    
    //    //register for notifications
    //    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userLoggedOut) name:kNotificationUserLoggedOut object:nil];
}

#pragma mark -
#pragma mark Properties

- (UINavigationController *)navigationController
{
    if (!_navigationController) {
        _navigationController = [[UINavigationController alloc] initWithRootViewController:[[UIViewController alloc] init]];
    }
    
    return _navigationController;
}

@end

//
//  TabBarDelegate.m
//  FriendCapital
//
//  Created by Cindy Luu on 9/19/15.
//  Copyright (c) 2015 Cindy Luu. All rights reserved.
//

#import "TabBarDelegate.h"

@implementation TabBarDelegate
@synthesize tabBarController;
@synthesize SummaryViewController;
@synthesize HistoryViewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //create the view controller for the first tab
    self.SummaryViewController = [[ViewController alloc] initWithNibName:nil
                                                                     bundle:NULL];
    
    //create the view controller for the second tab
    self.HistoryViewController = [[ViewController alloc] initWithNibName:nil
                                                                       bundle:NULL];
    
    //create an array of all view controllers that will represent the tab at the bottom
    NSArray *myViewControllers = [[NSArray alloc] initWithObjects:
                                  self.SummaryViewController,
                                  self.HistoryViewController, nil];
    
    //initialize the tab bar controller
    self.tabBarController = [[UITabBarController alloc] init];
    
    //set the view controllers for the tab bar controller
    [self.tabBarController setViewControllers:myViewControllers];
    
    //add the tab bar controllers view to the window
    [self.window addSubview:self.tabBarController.view];
    
    //set the window background color and make it visible
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    //do nothing
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    //do nothing
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    //do nothing
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    //do nothing
}

- (void)applicationWillTerminate:(UIApplication *)application {
    //do nothing
}

@end

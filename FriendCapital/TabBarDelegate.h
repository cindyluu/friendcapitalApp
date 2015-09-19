//
//  TabBarDelegate.h
//  FriendCapital
//
//  Created by Cindy Luu on 9/19/15.
//  Copyright (c) 2015 Cindy Luu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarController.h"
#import "SummaryViewController.h"
#import "HistoryViewController.h"

@interface TabBarDelegate : UIResponder <UIApplicationDelegate>
@property (strong,nonatomic) UIWindow *window;
@property (strong,nonatomic) UITabBarController *tabBarController;
@property (strong,nonatomic) ViewController *SummaryViewController;
@property (strong,nonatomic) ViewController *HistoryViewController;

@end

//
//  tabBarController.m
//  FriendCapital
//
//  Created by Cindy Luu on 9/19/15.
//  Copyright (c) 2015 Cindy Luu. All rights reserved.
//

#import "tabBarController.h"

@interface tabBarController ()

@end

@implementation tabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //create a custom view for the tab bar
    CGRect frame = CGRectMake(0.0, 0.0, self.view.bounds.size.width, 48);
    UIView *v = [[UIView alloc] initWithFrame:frame];
    [v setBackgroundColor:[UIColor greenColor]];
    [v setAlpha:0.5];
    [[self tabBar] addSubview:v];
    
    //set the tab bar title appearance for normal state
    [[UITabBarItem appearance]
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor],
                              NSFontAttributeName:[UIFont boldSystemFontOfSize:16.0f]}
     forState:UIControlStateNormal];
    
    //set the tab bar title appearance for selected state
    [[UITabBarItem appearance]
     setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor blueColor],
                               NSFontAttributeName:[UIFont boldSystemFontOfSize:16.0f]}
     forState:UIControlStateHighlighted];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
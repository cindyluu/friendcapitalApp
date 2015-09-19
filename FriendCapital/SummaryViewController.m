//
//  SummaryViewController.m
//  FriendCapital
//
//  Created by Cindy Luu on 9/19/15.
//  Copyright (c) 2015 Cindy Luu. All rights reserved.
//

#import "SummaryViewController.h"

@interface SummaryViewController ()

@end

@implementation SummaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    NSLog(@"Initialize the first Tab");
    
    if (self) {
        //set the title for the tab
        self.title = @"First Tab";
        //set the image icon for the tab
        self.tabBarItem.image = [UIImage imageNamed:@"first.png"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"View is displayed for the first Tab");
    
    //just display some text so that we know what view we are in
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 300, 100)];
    myLabel.text = @"First View Controller";
    myLabel.font = [UIFont boldSystemFontOfSize:24.0f];
    [self.view addSubview:myLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
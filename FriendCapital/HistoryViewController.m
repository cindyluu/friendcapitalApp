//
//  HistoryViewController.m
//  FriendCapital
//
//  Created by Cindy Luu on 9/19/15.
//  Copyright (c) 2015 Cindy Luu. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController ()

@end

@implementation HistoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    NSLog(@"Initialize the second Tab");
    
    if (self) {
        self.title = @"Second Tab";
        self.tabBarItem.image = [UIImage imageNamed:@"second.png"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"View is displayed for the second Tab");
    
    //just display some text so that we know what view we are in
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 300, 100)];
    myLabel.text = @"Second View Controller";
    myLabel.font = [UIFont boldSystemFontOfSize:24.0f];
    [self.view addSubview:myLabel];
    
    //create a button so that when the user taps it we will generate a new
    //tab programmatically
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(85.0f, 100.0f, 150.0f, 37.0f);
    [myButton setTitle:@"Add another Tab"
              forState:UIControlStateNormal];
    [myButton addTarget:self
                 action:@selector(checkButtonClick:)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
    
}

- (void) checkButtonClick:(UIButton *)paramSender{
    
    UIButton *myButton = paramSender;
    
    //check which button was tapped
    if([myButton.currentTitle isEqualToString:@"Add another Tab"]){
        NSLog(@"Clicked on the button");
        
        //if the last view controller doesn't exists create it
        if(self.lastViewController == nil){
            LastViewController *lastView = [[LastViewController alloc] init];
            self.lastViewController = lastView;
            
            //Get the current array of View Controllers
            NSArray *currentControllers = self.tabBarController.viewControllers;
            
            //Create a mutable array out of this array
            NSMutableArray *newControllers = [NSMutableArray arrayWithArray:currentControllers];
            
            //add another view controller to the mutable array
            [newControllers addObject:lastViewController];
            
            //Assign the manipulated array to the tab bar Controller with animation
            [self.tabBarController setViewControllers:newControllers
                                             animated:YES];
            //display the tab that was just added
            [self.tabBarController setSelectedIndex:(newControllers.count -1)];
            
        }
        
        
        
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
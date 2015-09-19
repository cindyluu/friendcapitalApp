//
//  LendViewController.m
//  FriendCapital
//
//  Created by Cindy Luu on 9/19/15.
//  Copyright (c) 2015 Cindy Luu. All rights reserved.
//

#import "ViewBorrowRequestController.h"

@interface ViewBorrowRequestController ()
@property (weak, nonatomic) IBOutlet UITextView *toplineRequestDescription;
@property (weak, nonatomic) IBOutlet UITextView *fullRequestDescription;
@property (weak, nonatomic) IBOutlet UITextField *offeredRate;

@end

@implementation ViewBorrowRequestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendLoanOffer:(id)sender {
    //send loan offer to server, update loan and user
    
    //segue to list page of loan requests
}

- (IBAction)ignoreLoanRequest:(id)sender {
    //update user (maybe loan)
    
    //segue to list page of loan requests
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

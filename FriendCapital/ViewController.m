//
//  ViewController.m
//  FriendCapital
//
//  Created by Cindy Luu on 9/19/15.
//  Copyright (c) 2015 Cindy Luu. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface ViewController ()
@property (strong,nonatomic) NSMutableArray *posts;
@property (strong,nonatomic) NSDictionary *post;


@property NSString* urlAccounts;
@property NSString* urlCustomer;
@property NSString *userPhone;
@property NSString *userID;
@property NSString *userPassword;
@property NSArray *keys;
@property NSArray *values;
@end

@implementation ViewController
//- (void)getCapitalOneData: { (NSString *) self.apiURL {
//

//}
//

- (void)viewDidLoad {
    [super viewDidLoad];
   // UITabBarController *tabBarController = (UITabBarController*)[UIApplication sharedApplication].keyWindow.rootViewController ;
    
    //[tabBarController setDelegate:self];
}



- (IBAction)signIn:(id)sender {
    
    
    
    // if username is pgriffin and password is bigred
    // pull up his _id
    //
    
    
    self.urlAccounts = @"http://api.reimaginebanking.com/accounts?key=349682382782abff5eb86671e5d47bd6";
    self.urlCustomer = @"http://api.reimaginebanking.com/customers?key=349682382782abff5eb86671e5d47bd6";
    
    // if success print json, if failure print error
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:self.urlAccounts parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        self.posts = (NSMutableArray *)responseObject;
        self.post = self.posts[1];
        
        
        NSLog(@"JSON: %@", responseObject);
        NSLog(@"this is the first item%@", self.post);
        NSLog(@"#######%@",[self.post class]);
        
        self.keys = [self.post allKeys];
        self.values = [self.post allValues];
        NSLog(@"array with keys %@", self.keys);
        NSLog(@"array with values %@", self.values);
    }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
             //    [self getCapitalOneData:self.urlCustomer];
         }];
    
    NSLog(@"this is url accounts %@,", self.urlAccounts);
    NSLog(@"this is url customer %@,", self.urlCustomer);

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

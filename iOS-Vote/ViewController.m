//
//  ViewController.m
//  iOS-Vote
//
//  Created by willy on 29/06/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "ViewController.h"
#import "VotingViewController.h"
#import "GMPInt.h"
#import "gmp.h"
#import "libs/bn.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSString* voterIDString;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)verifyVoter{
    voterIDString = [[NSString alloc] initWithString: userVoterID.text];
    int voterID = [voterIDString intValue];
    BOOL success = false;
    
    if ([voterIDString isEqualToString:@""]) {
        [ToastView showToastInParentView:self.view withText:@"Please enter an ID" withDuaration:2.0];
    } else {
        [ToastView showToastInParentView:self.view withText:[NSString stringWithFormat:@"Now verifying ID: %d", voterID] withDuaration:2.0];
        
        //check our ID against the registration server. Code to do this can be found at: https://dipinkrishna.com/blog/2013/12/ios-login-screen-tutorial-xcode-5-ios-7-storyboard-json/5/
        
        success = true;
    }
    
    if (success) {
        //we just add the timer here for testing purposes
        
        //We also need to pass information through the segue, such as private and public keys, voter ID
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self performSegueWithIdentifier:@"verifySuccess" sender:self];
        });
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"verifySuccess"]) {
        UINavigationController *navController = (UINavigationController*)[segue destinationViewController];
        VotingViewController* vvc = (VotingViewController*)[navController topViewController];
        vvc.voterIDString = voterIDString;
    }
}

@end

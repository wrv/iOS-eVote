//
//  ViewController.m
//  iOS-Vote
//
//  Created by willy on 29/06/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)verifyVoter{
    NSString* voterIDString = [[NSString alloc] initWithString: userVoterID.text];
    int voterID = [voterIDString intValue];
    
    
    [ToastView showToastInParentView:self.view withText:[NSString stringWithFormat:@"Now verifying ID: %d", voterID] withDuaration:2.0];
}

@end

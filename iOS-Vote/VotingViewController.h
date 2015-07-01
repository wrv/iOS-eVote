//
//  VotingViewController.h
//  iOS-Vote
//
//  Created by willy on 30/06/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VotingViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    IBOutlet UILabel* curVoterID;
}

@property (nonatomic, strong) NSString* voterIDString;

- (IBAction)endVotingSession;

@end

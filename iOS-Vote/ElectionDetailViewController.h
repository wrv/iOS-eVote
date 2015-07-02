//
//  ElectionDetailViewController.h
//  iOS-Vote
//
//  Created by willy on 02/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ElectionDetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>{
    IBOutlet UILabel *electionName;
    IBOutlet UILabel *electionDescription;
}

@property (nonatomic, strong) NSString *electionNameString;


@end

//
//  ViewController.h
//  iOS-Vote
//
//  Created by willy on 29/06/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToastView.h"

@interface ViewController : UIViewController{
    IBOutlet UITextField* userVoterID;
}

- (IBAction) verifyVoter;

@end


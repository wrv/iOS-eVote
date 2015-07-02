//
//  CandidateDetailCell.h
//  iOS-Vote
//
//  Created by willy on 02/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CandidateDetailCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *partyLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;


@end

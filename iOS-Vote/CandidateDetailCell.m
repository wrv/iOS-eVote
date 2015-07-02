//
//  CandidateDetailCell.m
//  iOS-Vote
//
//  Created by willy on 02/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "CandidateDetailCell.h"

@implementation CandidateDetailCell

@synthesize nameLabel = _nameLabel;
@synthesize partyLabel = _partyLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

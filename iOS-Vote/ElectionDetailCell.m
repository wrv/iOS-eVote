//
//  ElectionDetailCell.m
//  iOS-Vote
//
//  Created by willy on 01/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "ElectionDetailCell.h"

@implementation ElectionDetailCell

@synthesize nameLabel = _nameLabel;
@synthesize durationLabel = _durationLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

//
//  ElectionDetailCell.h
//  iOS-Vote
//
//  Created by willy on 01/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ElectionDetailCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *durationLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end

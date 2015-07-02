//
//  ElectionDetailViewController.m
//  iOS-Vote
//
//  Created by willy on 02/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "ElectionDetailViewController.h"
#import "CandidateDetailCell.h"

@interface ElectionDetailViewController ()

@end

@implementation ElectionDetailViewController{
    NSArray *candidates;
}

@synthesize electionNameString;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    candidates = [NSArray arrayWithObjects:@"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
    electionName.text = electionNameString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [candidates count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"CandidateDetailCell";
    
    CandidateDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CandidateDetailCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [candidates objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:@"user1.png"];
    cell.partyLabel.text = @"Independent";
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 71;
}

-(IBAction)castVote:(id)sender{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

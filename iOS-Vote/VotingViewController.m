//
//  VotingViewController.m
//  iOS-Vote
//
//  Created by willy on 30/06/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "VotingViewController.h"
#import "ElectionDetailCell.h"
#import "ElectionDetailViewController.h"

@interface VotingViewController ()

@end

@implementation VotingViewController{
    NSArray *elections;
}

@synthesize voterIDString;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    curVoterID.text = [NSString stringWithFormat:@"Beinvenidos, ID#: %@", voterIDString];
    
    //for testing purposes
    elections = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [elections count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"ElectionDetailCell";
    
    ElectionDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ElectionDetailCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [elections objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:@"mexico_640.png"];
    cell.durationLabel.text = @"2 Months";
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 71;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"electionDetailSegue"]) {
        NSIndexPath *indexPath = [currentTableView indexPathForSelectedRow];
        ElectionDetailViewController *destViewController = segue.destinationViewController;
        destViewController.electionNameString = [elections objectAtIndex:indexPath.row];
    }
}

- (IBAction)endVotingSession{
    //clean up any variables
    
    [self performSegueWithIdentifier:@"endSession" sender:self];
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

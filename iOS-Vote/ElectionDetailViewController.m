//
//  ElectionDetailViewController.m
//  iOS-Vote
//
//  Created by willy on 02/07/15.
//  Copyright (c) 2015 wrv. All rights reserved.
//

#import "ElectionDetailViewController.h"
#import "CandidateDetailCell.h"
#import "ToastView.h"

@interface ElectionDetailViewController ()

@end

@implementation ElectionDetailViewController{
    NSArray *candidates;
    NSString *curChosenCandidate;
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    curChosenCandidate =[candidates objectAtIndex:indexPath.row];
    UIAlertView *confirmVote = [[UIAlertView alloc]
                                 initWithTitle:@"Verification" message:[NSString stringWithFormat:@"Are you sure you want to vote for %@?",curChosenCandidate] delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    // Display Alert Message
    [confirmVote addButtonWithTitle:@"Proceed"];
    [confirmVote show];
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    //NSLog(@"Button Index =%ld",buttonIndex);
    if(buttonIndex == 1)
    {
        //add the voting protocol stuff here
        [ToastView showToastInParentView:self.view withText:@"Voted!" withDuaration:1.0];
        NSLog(@"Voted for %@ in election %@", curChosenCandidate, electionNameString);
    }
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

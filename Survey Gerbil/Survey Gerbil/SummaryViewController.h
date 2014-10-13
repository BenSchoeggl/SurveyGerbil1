//
//  FirstViewController.h
//  Survey Gerbil
//
//  Created by iGuest on 10/13/14.
//  Copyright (c) 2014 Schoeggl apps. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Survey;

@interface SummaryViewController : UIViewController

@property (strong, nonatomic) Survey *survey;

// UI properties
@property (weak, nonatomic) IBOutlet UIButton *removeObsButton;
@property (weak, nonatomic) IBOutlet UIButton *prevButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (weak, nonatomic) IBOutlet UILabel *obsCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *obsTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *obsTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *obsCommentLabel;
@property (weak, nonatomic) IBOutlet UIButton *listToConsoleButton;
- (IBAction)addObs:(id)sender;
- (IBAction)removeObs:(id)sender;
- (IBAction)prevObs:(id)sender;
- (IBAction)nextObs:(id)sender;
- (IBAction)listToConsole:(id)sender;



@end


//
//  SummaryViewController.m
//  Survey Gerbil
//
//  Created by iGuest on 10/13/14.
//  Copyright (c) 2014 Schoeggl apps. All rights reserved.
//

#import "SummaryViewController.h"
#import "Survey.h"
#import "loggingMacros.h"
#import "Observation.h"

@interface SummaryViewController ()

@property (assign, nonatomic) NSUInteger currentObs;

@end

@implementation SummaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.survey = [[Survey alloc] init];
    _currentObs = -1;
}

- (void) viewDidAppear:(BOOL)animated;
{
    [self updateInterface];
}

- (void) updateInterface;
{
    NSLog([NSString stringWithFormat:@"currentObs = %zd", self.currentObs]);
    if (self.survey.observations.count == 0) {
        self.removeObsButton.enabled = NO;
        self.prevButton.enabled = NO;
        self.nextButton.enabled = NO;
        self.editButton.enabled = NO;
        self.listToConsoleButton.enabled = NO;
        self.obsTypeLabel.text = @"";
        self.obsTimeLabel.text = @"";
        self.obsCommentLabel.text = @"";
    } else {
        self.removeObsButton.enabled = YES;
        self.prevButton.enabled = YES;
        self.nextButton.enabled = YES;
        self.editButton.enabled = YES;
        self.listToConsoleButton.enabled = YES;
        Observation *o = [self.survey.observations objectAtIndex:self.currentObs];
        self.obsTypeLabel.text = [Observation stringForDefectKind:o.defectKind];
        self.obsTimeLabel.text = [o.time description];
        self.obsCommentLabel.text = o.comment;
    }
    self.obsCountLabel.text = [NSString stringWithFormat:@"%zd", self.survey.observations.count];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addObs:(id)sender;
{
    [self.survey addObservation];
    self.currentObs++;
    [self updateInterface];
}

- (IBAction)removeObs:(id)sender;
{
    [self.survey.observations removeObjectAtIndex:self.currentObs];
    self.currentObs--;
    [self updateInterface];
}

- (IBAction)prevObs:(id)sender;
{
    if (self.currentObs == 0) {
        self.currentObs = (self.survey.observations.count - 1);
    } else {
        self.currentObs--;
    }
    NSLog([NSString stringWithFormat:@"currentObs = %zd", self.currentObs]);
    [self updateInterface];
}

- (IBAction)nextObs:(id)sender;
{
    if (self.currentObs >= (self.survey.observations.count - 1)) {
        self.currentObs = 0;
    } else {
        self.currentObs++;
    }
    NSLog([NSString stringWithFormat:@"currentObs = %zd", self.currentObs]);
    [self updateInterface];
}
- (IBAction)listToConsole:(id)sender;
{
    
}


@end

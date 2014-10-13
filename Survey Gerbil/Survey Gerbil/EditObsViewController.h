//
//  EditObsViewController.h
//  Survey Gerbil
//
//  Created by iGuest on 10/13/14.
//  Copyright (c) 2014 Schoeggl apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditObsViewController : UIViewController


@property (weak, nonatomic) IBOutlet UISegmentedControl *typeControl;
@property (weak, nonatomic) IBOutlet UITextField *commentField;

- (IBAction)saveEdits:(id)sender;
- (IBAction)cancelEdits:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *updateObservationTime;

@end

//
//  AddHealthTypeViewController.h
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HealthType;

@interface AddHealthTypeViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *typeLabel;

@property (strong, nonatomic) HealthType *health;

- (IBAction)done:(id)sender;
- (IBAction)cancel:(id)sender;
@end

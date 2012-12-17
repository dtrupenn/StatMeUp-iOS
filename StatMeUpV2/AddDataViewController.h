//
//  AddDataViewController.h
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HealthData;

@interface AddDataViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *valLabel;

@property (strong, nonatomic) HealthData *value;

@end

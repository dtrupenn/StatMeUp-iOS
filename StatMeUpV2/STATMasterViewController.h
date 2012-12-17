//
//  STATMasterViewController.h
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class STATDetailViewController;

#import <CoreData/CoreData.h>

@interface STATMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) STATDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

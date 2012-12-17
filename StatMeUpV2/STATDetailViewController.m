//
//  STATDetailViewController.m
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import "STATDetailViewController.h"
#import "HealthType.h"
#import "AddDataViewController.h"

@interface STATDetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation STATDetailViewController

#pragma mark - Managing the detail item

//- (void)setDetailItem:(id)newDetailItem
//{
//    if (_detailItem != newDetailItem) {
//        _detailItem = newDetailItem;
//        
//        // Update the view.
//        [self configureView];
//    }
//
//    if (self.masterPopoverController != nil) {
//        [self.masterPopoverController dismissPopoverAnimated:YES];
//    }        
//}

- (void) setTypeItem: (HealthType *) newHealth {
    
    if (_health != newHealth) {
        _health = newHealth;
        
        // Update the view.
        [self configureView];
    }
    
}

- (void)configureView
{
    // Update the user interface for the detail item.
    HealthType *currHealth = _health;
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if (currHealth) {
        self.nameLabel.text = currHealth.name;
        self.avgLabel.text = [NSString stringWithFormat:@"%.2f", _health.avg];
        self.mdnLabel.text = [NSString stringWithFormat:@"%.2f", _health.mdn];
        self.minLabel.text = [NSString stringWithFormat:@"%.2f", _health.min];
        self.maxLabel.text = [NSString stringWithFormat:@"%.2f", _health.max];
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)currHealth.date];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

#pragma mark - My stuff

- (IBAction)done:(UIStoryboardSegue *)segue
{

    if ([[segue identifier] isEqualToString:@"ReturnInputData"]) {
        
        AddDataViewController *addController = [segue sourceViewController];
        if ([addController.valLabel.text length]) {
            [_health addHeathVal:[addController.valLabel.text floatValue]];
            [self viewDidLoad];
        }
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

- (IBAction)cancel:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"CancelInputData"]) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

@end

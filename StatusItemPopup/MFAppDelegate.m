//
//  MFAppDelegate.m
//  StatusItemPopup
//
//  Created by Maxim Pervushin on 11/28/12.
//  Copyright (c) 2012 Maxim Pervushin. All rights reserved.
//

#import "MFAppDelegate.h"
#import "MFStatusView.h"
#import "MFPopoverContentViewController.h"

@interface MFAppDelegate ()
{
    MFStatusView *_statusView;
}

- (IBAction)showPopover:(id)sender;
- (IBAction)hidePopover:(id)sender;

@end

@implementation MFAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _statusView = [[MFStatusView alloc] init];
}

- (IBAction)showPopover:(id)sender
{
    if (_statusView != nil) {
        [_statusView showPopoverWithViewController:[[MFPopoverContentViewController alloc] initWithNibName:@"MFPopoverContentViewController" bundle:nil]];
    }
}

- (IBAction)hidePopover:(id)sender
{
    if (_statusView != nil) {
        [_statusView hidePopover];
    }
}

@end

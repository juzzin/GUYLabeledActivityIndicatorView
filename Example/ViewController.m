//
//  ViewController.m
//  GUYLabeledActivityIndicatorView
//
//  Created by Justin on 7/2/15.
//  Copyright (c) 2015 Justin. All rights reserved.
//

#import "ViewController.h"
#import "GUYLabeledActivityIndicatorView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet GUYLabeledActivityIndicatorView *activityView;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.activityView startAnimating];
}

@end

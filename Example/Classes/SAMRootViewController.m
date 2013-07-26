//
//  SAMRootViewController.m
//  SAMLoadingView
//
//  Created by Sam Soffes on 7/25/13.
//  Copyright (c) 2013 Sam Soffes. All rights reserved.
//

#import "SAMRootViewController.h"
#import "SAMLoadingView.h"

@implementation SAMRootViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	self.title = @"Loading View";

	SAMLoadingView *loadingView = [[SAMLoadingView alloc] initWithFrame:self.view.bounds];
	loadingView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	[self.view addSubview:loadingView];
}

@end

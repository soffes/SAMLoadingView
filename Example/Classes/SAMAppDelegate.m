//
//  SAMAppDelegate.m
//  SAMLoadingView
//
//  Created by Sam Soffes on 7/25/13.
//  Copyright (c) 2013 Sam Soffes. All rights reserved.
//

#import "SAMAppDelegate.h"
#import "SAMRootViewController.h"

@implementation SAMAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	SAMRootViewController *viewController = [[SAMRootViewController  alloc] init];
	self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:viewController];

	self.window.backgroundColor = [UIColor whiteColor];
	[self.window makeKeyAndVisible];
	return YES;
}

@end

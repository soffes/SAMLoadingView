//
//  SAMLoadingViewTests.m
//  SAMLoadingViewTests
//
//  Created by Sam Soffes on 7/25/13.
//  Copyright (c) 2013 Sam Soffes. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "SAMLoadingView.h"

@interface SAMLoadingViewTests : SenTestCase
@end

@implementation SAMLoadingViewTests

- (void)testActivityIndicator {
	SAMLoadingView *loadingView = [[SAMLoadingView alloc] init];

	// Make sure it's loading when you initialize it
	STAssertTrue([loadingView.activityIndicatorView isAnimating], nil);
}

@end

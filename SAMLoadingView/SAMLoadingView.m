//
//  SAMLoadingView.m
//  SAMLoadingView
//
//  Created by Sam Soffes on 7/8/09.
//  Copyright 2009-2011 Sam Soffes. All rights reserved.
//

#import "SAMLoadingView.h"

@implementation SAMLoadingView

static CGFloat const kSAMLoadingViewInteriorPadding = 20.0f;
static CGFloat const kSAMLoadingViewIndicatorSize = 20.0f;
static CGFloat const kSAMLoadingViewIndicatorRightMargin = 8.0f;

#pragma mark - Accessors

@synthesize textLabel = _textLabel;
@synthesize activityIndicatorView = _activityIndicatorView;

- (UILabel *)textLabel {
	if (!_textLabel) {
		_textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
		_textLabel.text = @"Loading…";
		_textLabel.font = [UIFont systemFontOfSize:16.0f];
		_textLabel.textColor = [UIColor darkGrayColor];
		_textLabel.shadowColor = [UIColor whiteColor];
		_textLabel.shadowOffset = CGSizeMake(0.0f, 1.0f);
	}
	return _textLabel;
}


- (UIActivityIndicatorView *)activityIndicatorView {
	if (!_activityIndicatorView) {
		_activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
		_activityIndicatorView.hidesWhenStopped = NO;
		[_activityIndicatorView startAnimating];
	}
	return _activityIndicatorView;
}


#pragma mark - UIView

- (id)initWithCoder:(NSCoder *)aDecoder {
	if ((self = [super initWithCoder:aDecoder])) {
		[self initialize];
	}
	return self;
}


- (id)initWithFrame:(CGRect)frame {
	if ((self = [super initWithFrame:frame])) {
		[self initialize];
	}
	return self;
}


- (void)drawRect:(CGRect)rect {
	
	CGRect frame = self.frame;
	
	// Calculate sizes
	CGSize maxSize = CGSizeMake(frame.size.width - (kSAMLoadingViewInteriorPadding * 2.0f) - kSAMLoadingViewIndicatorSize - kSAMLoadingViewIndicatorRightMargin,
								kSAMLoadingViewIndicatorSize);
	
	CGSize textSize = [self.textLabel.text sizeWithFont:self.textLabel.font constrainedToSize:maxSize
									  lineBreakMode:NSLineBreakByWordWrapping];
	
	// Calculate position
	CGFloat totalWidth = textSize.width + kSAMLoadingViewIndicatorSize + kSAMLoadingViewIndicatorRightMargin;
	NSInteger y = (NSInteger)((frame.size.height / 2.0f) - (kSAMLoadingViewIndicatorSize / 2.0f));
	
	// Position the indicator
	self.activityIndicatorView.frame = CGRectMake((NSInteger)((frame.size.width - totalWidth) / 2.0f), y, kSAMLoadingViewIndicatorSize,
											  kSAMLoadingViewIndicatorSize);
	
	// Calculate text position
	CGRect textRect = CGRectMake(self.activityIndicatorView.frame.origin.x + kSAMLoadingViewIndicatorSize + kSAMLoadingViewIndicatorRightMargin, y,
								 textSize.width, textSize.height);
	
	// Draw text
	[self.textLabel drawTextInRect:textRect];
}


#pragma mark - Private

- (void)initialize {
	// View defaults
	self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	self.backgroundColor = [UIColor whiteColor];
	self.opaque = YES;
	self.contentMode = UIViewContentModeRedraw;

	// Setup the indicator
	[self addSubview:self.activityIndicatorView];
}

@end

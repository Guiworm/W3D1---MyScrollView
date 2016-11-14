//
//  myScrollView.m
//  W3D1---MyScrollView
//
//  Created by Dylan McCrindle on 2016-11-14.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "myScrollView.h"

@implementation myScrollView

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(scrollIt:)];
		[self addGestureRecognizer:pan];
	}
	return self;
}

-(void)scrollIt:(UIPanGestureRecognizer *)sender{
	CGRect frame = self.bounds;

	if(sender.state == UIGestureRecognizerStateChanged){
		CGPoint translation = [sender translationInView:self];
		
		frame.origin.y += translation.y;
	}
	self.bounds = frame;

}

@end

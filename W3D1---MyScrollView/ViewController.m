//
//  ViewController.m
//  W3D1---MyScrollView
//
//  Created by Dylan McCrindle on 2016-11-14.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	CGRect frame = self.rootView.bounds;
	frame.origin.y += 100.0f;
	self.rootView.bounds = frame;
}

-(void)viewDidAppear:(BOOL)animated {
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end

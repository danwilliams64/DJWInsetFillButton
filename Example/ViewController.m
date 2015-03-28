//
//  ViewController.m
//  DJWInsetFillButton
//
//  Created by Dan Williams on 19/03/2015.
//  Copyright (c) 2015 Dan Williams. All rights reserved.
//

#import "ViewController.h"
#import "DJWInsetFillButton.h"

@interface ViewController ()
@property (nonatomic, strong) DJWInsetFillButton *button;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.button = [[DJWInsetFillButton alloc] init];
    self.button.translatesAutoresizingMaskIntoConstraints = NO;
    self.button.title = @"Hello, world!";
    self.button.cornerRadius = 0;
    [self.view addSubview:self.button];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
}

@end

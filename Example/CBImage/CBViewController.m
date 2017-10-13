//
//  CBViewController.m
//  CBImage
//
//  Created by CBImage on 10/13/2017.
//  Copyright (c) 2017 CBImage. All rights reserved.
//

#import "CBViewController.h"
#import <CBImage/CBImage.h>

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"===== %@", [CBImage imageNamed:@"none"]);
    NSLog(@"===== %@", [CBImage imageNamed:@"dog"]);
    NSLog(@"===== %@", [CBImage imageNamed:@"dog.gif"]);
    NSLog(@"===== %@", [CBImage imageNamed:@"dog"].frames);
    NSLog(@"===== %@", [CBImage imageNamed:@"dog.gif"].frames);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

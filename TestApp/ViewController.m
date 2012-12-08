//
//  ViewController.m
//  TestApp
//
//  Created by Paul Solt on 12/8/12.
//  Copyright (c) 2012 Paul Solt. All rights reserved.
//

#import "ViewController.h"

#import <testlibrary/testlibrary.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loadPressed:(id)sender {
    PrivateMotion *p = [[PrivateMotion alloc] init];
    
    MyView *myView = [p showView];
    
    [self presentViewController:myView animated:YES completion:nil];
}

@end

//
//  MyView.m
//  testlibrary
//
//  Created by Paul Solt on 12/8/12.
//  Copyright (c) 2012 Paul Solt. All rights reserved.
//

#import "MyView.h"

@interface MyView ()

@end

@implementation MyView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    // Load a image from the bundle and add to view
    
    UIImage *image = [UIImage imageNamed:@"testlibrary.bundle/CloseButton@2x.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.center = CGPointMake(200, 300);
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end

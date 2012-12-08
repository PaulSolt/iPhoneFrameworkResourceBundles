//
//  PrivateMotion.m
//  testlibrary
//
//  Created by Paul Solt on 12/8/12.
//  Copyright (c) 2012 Paul Solt. All rights reserved.
//

#import "PrivateMotion.h"

@implementation PrivateMotion

// Load the framework bundle.
+ (NSBundle *)frameworkBundle {
    static NSBundle* frameworkBundle = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        NSString* mainBundlePath = [[NSBundle mainBundle] resourcePath];
        NSString* frameworkBundlePath = [mainBundlePath stringByAppendingPathComponent:@"testLibrary.bundle"];
        frameworkBundle = [NSBundle bundleWithPath:frameworkBundlePath];
    });
    return frameworkBundle;
}



- (MyView *)showView {
    MyView *myView = [[MyView alloc] initWithNibName:@"MyView" bundle:[PrivateMotion frameworkBundle]];
    return myView;
}
@end

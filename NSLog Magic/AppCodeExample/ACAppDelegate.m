//
//  Specific Crash Example.m
//  Specific Crash Example.m
//
//  Created by Paul Taykalo on 09/01/12.
//  Copyright (c) 2012 Stanfy LLC. All rights reserved.
//

#import "ACAppDelegate.h"
#import "SubmitViewController.h"


@implementation ACAppDelegate {

    SubmitViewController * _firstViewController;
}

@synthesize window = _window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    _firstViewController = [[SubmitViewController alloc] init];
    UINavigationController * nvc = [[UINavigationController alloc] initWithRootViewController:_firstViewController];
    self.window.rootViewController = nvc;
    [self.window addSubview:[nvc view]];
    [self.window makeKeyAndVisible];
    return YES;
}

@end



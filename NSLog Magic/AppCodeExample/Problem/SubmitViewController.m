//
//  SubmitViewController
//  I believe in NSLog magic
//
//  Created by Paul Taykalo on 9/26/12.
//  Copyright (c) 2012 Stanfy LLC. All rights reserved.
//
#import "SubmitViewController.h"
#import "FormViewController.h"
#import "UIView+SFAdditions.h"


@implementation SubmitViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Submit button
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self action:@selector(pressed:) forControlEvents:UIControlEventTouchUpInside];
    button.width = 100;
    button.height = 100;
    button.center = CGPointMake(160, 200);
    [[self view] addSubview:button];


    [button setTitle:@"Submit" forState:UIControlStateNormal];
    [[self view] setBackgroundColor:[UIColor whiteColor]];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationItem.title = @"Submit";
}


- (void)pressed:(id)button {
    FormViewController * svc = [[FormViewController alloc] init];
    [self.navigationController pushViewController:svc animated:YES];
}


@end
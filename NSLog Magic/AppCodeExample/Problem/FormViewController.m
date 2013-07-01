//
//  FormViewController
//  I believe in NSLog magic
//
//  Created by Paul Taykalo on 9/26/12.
//  Copyright (c) 2012 Stanfy LLC. All rights reserved.
//
#import "FormViewController.h"
#import "ACLabel.h"
#import "UIView+SFAdditions.h"


@implementation FormViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Placing labels
    UILabel * iLabel = [ACLabel new];

    iLabel.text = @"I";
    [(ACLabel *) iLabel performSelector:@selector(resizeToContents)];
    [iLabel setBackgroundColor:[UIColor redColor]];
    [[self view] addSubview:iLabel];

    UILabel * believeLabel = [ACLabel new];
    believeLabel.text = @"believe";
    [(ACLabel *) believeLabel performSelector:@selector(resizeToContents)];
    [believeLabel setBackgroundColor:[UIColor greenColor]];
    believeLabel.left = iLabel.right;
    [[self view] addSubview:believeLabel];

    UILabel * inLabel = [ACLabel new];
    inLabel.text = @"in";
    [(ACLabel *) inLabel performSelector:@selector(resizeToContents)];
    [inLabel setBackgroundColor:[UIColor blueColor]];
    inLabel.left = believeLabel.right;
    [[self view] addSubview:inLabel];

    UILabel *  magicLabel = [ACLabel new];
    magicLabel.text = @"magic";
    [(ACLabel *) magicLabel performSelector:@selector(resizeToContents)];
    [magicLabel setBackgroundColor:[UIColor yellowColor]];
    magicLabel.left = inLabel.right;
    [[self view] addSubview:magicLabel];

    // placing textView
    UIImageView * imageView = [UIImageView new];
    [[self view] addSubview:imageView];

// =====================================================
//  This is magic NSLOG
//  In case if you running on 6.1 / 6.0 BASE SDK
//  On 5.1 Simulator, you should get a crash
//
//  BUT!
//  There's NSLog-Man!
//
//  Uncomment him and he'll fix the crash!

//
//   NSLog(@"Fix all the bugs!");
//

    UITextView * textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 150, 320, 200)];

    NSString * systemVersion = [[UIDevice currentDevice] systemVersion];
    NSString * model = [[UIDevice currentDevice] model];
    BOOL requirementsFulfilled = [model isEqualToString:@"iPhone Simulator"] && [systemVersion floatValue] <= 5.1f;

    NSMutableString * message = [NSMutableString string];
    [message appendString:@"You need to run start this project with 6.x base SDK and run on 5.1 iOS simulator:)\n"];
    [message appendString:[NSString stringWithFormat:@"Now you running on the device with\n"]];
    [message appendString:[NSString stringWithFormat:@"version '%@'\n", systemVersion]];
    [message appendString:[NSString stringWithFormat:@"model '%@'\n", model]];
    [message appendString:[NSString stringWithFormat:@"And that %@\n", requirementsFulfilled ? @"should OK\n" : @"is NOT OK, but you can try:) Never knows what will happen\n"]];
    [message appendString:@"Now, when you possibly ready, press back button, and after that press Submit button again."];
    textView.text = message;

    [[self view] addSubview:textView];
    [textView setBackgroundColor:[UIColor brownColor]];
    [textView setTextColor:[UIColor whiteColor]];

    [[self view] setBackgroundColor:[UIColor whiteColor]];

}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationItem.title = @"FeedBack";
}


@end
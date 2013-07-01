//
//  ACLabel
//  I believe in NSLog magic
//
//  Created by Paul Taykalo on 9/26/12.
//  Copyright (c) 2012 Stanfy LLC. All rights reserved.
//
#import <Foundation/Foundation.h>


/*
 Text view for testing crash
 */
@interface ACLabel : UILabel

/*
 Returns minimum height of the text view
 */
- (CGFloat)minimumHeight;

/*
 Returns
 */
- (CGFloat)minimumWidth;


/*
 Resizes the label and returns it's height
 */
- (CGFloat)resizeToContents;


@end
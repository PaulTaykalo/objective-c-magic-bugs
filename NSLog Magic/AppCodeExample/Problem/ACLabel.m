//
//  ACLabel
//  I believe in NSLog magic
//
//  Created by Paul Taykalo on 9/26/12.
//  Copyright (c) 2012 Stanfy LLC. All rights reserved.
//
#import "ACLabel.h"


@implementation ACLabel {

}

- (CGFloat)minimumHeight {
    return 50;

}


- (CGFloat)minimumWidth {
    return 50;
}


- (CGFloat)resizeToContents {
    CGSize size = [self.text sizeWithFont:self.font forWidth:CGFLOAT_MAX lineBreakMode:self.lineBreakMode];
    CGRect oldFrame = self.frame;
    oldFrame.size = size;
    self.frame = oldFrame;

    return size.height;
}


- (CGSize)sizeThatFits:(CGSize)size {
    CGSize result = CGSizeMake(MAX(size.width, [self minimumWidth]), MAX(size.height, [self minimumHeight]));
    return result;
}


@end
//
//  CustomView2.m
//  Demo1
//
//  Created by ljj on 14-8-19.
//  Copyright (c) 2014年 ljj. All rights reserved.
//

#import "CustomView2.h"
#import "GlobelImpl.h"

@implementation CustomView2

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    //    CGContextSetRGBStrokeColor(context, 0, 1, 0, 1);
    CGContextSetRGBFillColor(context, 0, 0, 1, 1);
    CGContextAddArc(context, headerCenterWidth, headerCenterHeight, headerRadius, radians((90 - headerClipHalfAngle)), radians(90 + headerClipHalfAngle), 1);
    //    CGContextAddLineToPoint(context, 150, 150);
    //     CGPoint cPoint = CGContextGetPathCurrentPoint(context);
    CGContextAddArcToPoint(context,
                           headerCenterWidth,
                           headerCenterHeight + (headerRadius * sin(radians(90 - headerClipHalfAngle)) - headerRadius * sin(radians(headerClipHalfAngle)) * tan(radians(headerClipHalfAngle))),
                           
                           headerCenterWidth + headerRadius * sin(radians(headerClipHalfAngle)),
                           headerCenterHeight + headerRadius * sin(radians(90 - headerClipHalfAngle)),
                           headerRadius);
    
    CGContextClosePath(context);
    
    //    CGPathRef path = CGContextCopyPath(context);
    
//    CGContextStrokePath(context);
    
    //    CGContextAddPath(context, path);
    //    CGContextFillPath(context);
    //    CGContextClosePath(context);
    CGContextClip(context);
    UIImage *image2=[UIImage imageNamed:@"2"];
    [image2 drawAtPoint:CGPointMake(0, 0)];
    //    CGAffineTransform transform = CGAffineTransformIdentity;
    //    transform = CGAffineTransformRotate(transform, M_PI);
    //    CGContextConcatCTM(context, transform);
}

@end
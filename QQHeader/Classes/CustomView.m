//
//  CustomView.m
//  Demo1
//
//  Created by ljj on 14-8-19.
//  Copyright (c) 2014年 ljj. All rights reserved.
//

#import "CustomView.h"
#import "GlobelImpl.h"

@interface CustomView ()
{
    int snapshot_start;
    int snapshot_finish;
    
}

@end

@implementation CustomView

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
    CGContextAddArc(context, headerCenterWidth, headerCenterHeight, headerRadius, radians(-(90 + headerClipHalfAngle)), radians(-90 + headerClipHalfAngle), 1);
//    CGContextAddLineToPoint(context, 150, 150);
//     CGPoint cPoint = CGContextGetPathCurrentPoint(context);
    CGContextAddArcToPoint(context,
                           headerCenterWidth,
                           headerCenterHeight - (headerRadius * sin(radians(90 - headerClipHalfAngle)) - headerRadius * sin(radians(headerClipHalfAngle)) * tan(radians(headerClipHalfAngle))),
                           headerCenterWidth - headerRadius * sin(radians(headerClipHalfAngle)),
                           headerCenterHeight - headerRadius * sin(radians(90 - headerClipHalfAngle)),
                           headerRadius);
    
    CGContextClosePath(context);
    
//    CGPathRef path = CGContextCopyPath(context);
    
//    CGContextStrokePath(context);
    
//    CGContextAddPath(context, path);
//    CGContextFillPath(context);
    //    CGContextClosePath(context);
    CGContextClip(context);
    UIImage *image2=[UIImage imageNamed:@"0"];
    [image2 drawAtPoint:CGPointMake(0, 0)];
//    CGAffineTransform transform = CGAffineTransformIdentity;
//    transform = CGAffineTransformRotate(transform, M_PI);
//    CGContextConcatCTM(context, transform);
}

////CGContextAddArc   0 顺时针 1 逆时针
//- (void)drawRect:(CGRect)rect
//{
//    CGContextRef context=UIGraphicsGetCurrentContext();
////    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);
////    CGContextMoveToPoint(context, 100, 100);
////    CGContextAddArcToPoint(context, 50, 100, 50, 150, 50);
////    CGContextStrokePath(context);
//    
//    CGContextSetRGBStrokeColor(context, 0, 1, 0, 1);
//    CGContextSetRGBFillColor(context, 0, 0, 1, 1);
////    CGContextMoveToPoint(context, 150, 150);
//    CGContextAddArc(context, 150, 150, 50, -110* M_PI/ 180, -70* M_PI/ 180, 1);
//    CGContextClosePath(context);
//    
//    CGPathRef path = CGContextCopyPath(context);
//    
//    CGContextStrokePath(context);
//    
//    CGContextAddPath(context, path);
//    CGContextFillPath(context);
////    CGContextClosePath(context);
////    CGContextClip(context);
////    UIImage *image2=[UIImage imageNamed:@"me"];
////    [image2 drawAtPoint:CGPointMake(100, 100)];
//}


//#define PI 3.14159265358979323846
//static inline float radians(double degrees) { return degrees * PI / 180; }
//
//- (void)drawRect:(CGRect)rect {
//    
//    CGRect parentViewBounds = self.bounds;
//    CGFloat x = CGRectGetWidth(parentViewBounds)/2;
//    CGFloat y = CGRectGetHeight(parentViewBounds)*0.55;
//    
//    // Get the graphics context and clear it
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextClearRect(ctx, rect);
//    
//    // define stroke color
//    CGContextSetRGBStrokeColor(ctx, 1, 1, 1, 1.0);
//    
//    // define line width
//    CGContextSetLineWidth(ctx, 4.0);
//    
//    
//    // need some values to draw pie charts
//    
//    double snapshotCapacity =20;
//    double rawCapacity = 100;
//    double systemCapacity = 1;
//    
//    int offset = 5;
//    double pie1_start = 315.0;
//    double pie1_finish = snapshotCapacity *360.0/rawCapacity;
//    double system_finish = systemCapacity*360.0/rawCapacity;
//    
//    CGContextSetFillColor(ctx, CGColorGetComponents( [[UIColor greenColor] CGColor]));
//    CGContextMoveToPoint(ctx, x+2*offset, y);
//    CGContextAddArc(ctx, x+2*offset, y, 100,  radians(snapshot_start), radians(snapshot_start+snapshot_finish), 0);
//    CGContextClosePath(ctx);
//    CGContextFillPath(ctx);
//    
//    // system capacity
//    CGContextSetFillColor(ctx, CGColorGetComponents( [[UIColor colorWithRed:15 green:165/255 blue:0 alpha:1 ] CGColor]));
//    CGContextMoveToPoint(ctx, x+offset,y);
//    CGContextAddArc(ctx, x+offset, y, 100,  radians(snapshot_start+snapshot_finish+offset), radians(snapshot_start+snapshot_finish+system_finish), 0);
//    CGContextClosePath(ctx);
//    CGContextFillPath(ctx);
//    
//    /* data capacity */
//    CGContextSetFillColor(ctx, CGColorGetComponents( [[UIColor colorWithRed:99/255 green:184/255 blue:255/255 alpha:1 ] CGColor]));
//    CGContextMoveToPoint(ctx, x, y);
//    CGContextAddArc(ctx, x, y, 100,  radians(snapshot_start+snapshot_finish+system_finish+offset), radians(snapshot_start), 0);
//    CGContextClosePath(ctx);
//    CGContextFillPath(ctx);
//}


//- (void)drawRect:(CGRect)rect
//{
//    
//    //画三角形，以便以后指定可以显示图片的范围
//    //获取图形上下文
//    CGContextRef ctx=UIGraphicsGetCurrentContext();
//        CGContextAddEllipseInRect(ctx, CGRectMake(100, 100, 100, 100));
////    CGContextMoveToPoint(ctx, 100, 100);
////    CGContextAddLineToPoint(ctx, 100, 150);
////    CGContextAddLineToPoint(ctx, 150, 150);
////    CGContextClosePath(ctx);
//    
//    
//    //注意：指定范围（也就是指定剪切的方法一定要在绘制范围之前进行调用）
//    //指定上下文中可以显示内容的范围就是圆的范围
//    CGContextClip(ctx);
//    UIImage *image2=[UIImage imageNamed:@"me"];
//    [image2 drawAtPoint:CGPointMake(100, 100)];
//}

@end

//
//  CustomLayer.m
//  QQHeader
//
//  Created by lijunjie on 15/12/28.
//  Copyright © 2015年 ljj. All rights reserved.
//

#import "CustomLayer.h"

#define headerClipHalfAngle 30  //裁剪弧度的一半的度数
static inline float radians(double degrees) { return degrees * M_PI / 180; }

@implementation CustomLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        _degrees = 0;
        _scale = 0.5;
    }
    return self;
}

- (void)drawInContext:(CGContextRef)context
{
    CGContextSetRGBFillColor(context, 0, 0, 1, 1);
    CGMutablePathRef path = CGPathCreateMutable();
    CGRect bounds = self.bounds;
    CGSize size = bounds.size;
    CGPoint center = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds));
    CGAffineTransform transform = CGAffineTransformIdentity;
    transform = CGAffineTransformTranslate(transform, center.x, center.y);
    transform = CGAffineTransformRotate(transform, radians(_degrees));
    transform = CGAffineTransformTranslate(transform, -center.x, -center.y);
    CGPathAddArc(path, &transform, size.width / 2, size.height / 2, size.width / 2, radians((90 - headerClipHalfAngle)), radians(90 + headerClipHalfAngle), 1);
    CGPathAddArcToPoint(path,&transform,
                        size.width / 2,
                        size.height / 2 + (size.width / 2 * sin(radians(90 - headerClipHalfAngle)) - size.width / 2 * sin(radians(headerClipHalfAngle)) * tan(radians(headerClipHalfAngle))),
                        size.width / 2 + size.width / 2 * sin(radians(headerClipHalfAngle)),
                        size.height / 2 + size.width / 2 * sin(radians(90 - headerClipHalfAngle)),
                        size.width / 2);
    CGContextAddPath(context, path);
    CGContextClosePath(context);
    CGContextClip(context);
    CGContextScaleCTM(context, _scale, _scale);
    UIImage *image2=[UIImage imageNamed:_imageName];
    UIGraphicsPushContext( context );
    [image2 drawInRect:CGRectMake(0, 0, image2.size.width, image2.size.height)];
    UIGraphicsPopContext();
}

@end

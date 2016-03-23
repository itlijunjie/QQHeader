//
//  JJCustomLayer.m
//  QQHeader
//
//  Created by lijunjie on 15/12/28.
//  Copyright © 2015年 ljj. All rights reserved.
//

#import "JJCustomLayer.h"
#import "JJHeadersConfig.h"

static inline float radians(double degrees) { return degrees * M_PI / 180; }

@interface JJCustomLayer ()

@property (nonatomic, assign) NSInteger degrees;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, assign) CGFloat scale;
@property (nonatomic, assign) BOOL isClip;

@end

@implementation JJCustomLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        _degrees = 0;
        _scale = 1.0;
        _isClip = YES;
    }
    return self;
}

+ (JJCustomLayer *)createWithImage:(UIImage *)image scale:(CGFloat)scale degrees:(NSInteger)degrees isClip:(BOOL)isClip
{
    JJCustomLayer *res = [JJCustomLayer layer];
    [res updateWithImage:image scale:scale degrees:degrees isClip:isClip];
    return res;
}

- (void)updateWithImage:(UIImage *)image scale:(CGFloat)scale degrees:(NSInteger)degrees isClip:(BOOL)isClip;
{
    _degrees = degrees;
    _scale = scale;
    _image = image;
    _isClip = isClip;
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
    if (_isClip) {
        CGPathAddArc(path, &transform, size.width / 2, size.height / 2, size.width / 2, radians((90 - kHeaderClipHalfAngle)), radians(90 + kHeaderClipHalfAngle), 1);
        CGPathAddArcToPoint(path,&transform,
                            size.width / 2,
                            size.height / 2 + (size.width / 2 * sin(radians(90 - kHeaderClipHalfAngle)) - size.width / 2 * sin(radians(kHeaderClipHalfAngle)) * tan(radians(kHeaderClipHalfAngle))),
                            size.width / 2 + size.width / 2 * sin(radians(kHeaderClipHalfAngle)),
                            size.height / 2 + size.width / 2 * sin(radians(90 - kHeaderClipHalfAngle)),
                            size.width / 2);
    } else {
        CGPathAddArc(path, &transform, size.width / 2, size.height / 2, size.width / 2, radians((90)), radians(90 + 0.01), 1);
    }
    CGContextAddPath(context, path);
    CGContextClosePath(context);
    CGContextClip(context);
    UIGraphicsPushContext( context );
    [_image drawInRect:CGRectMake(0, 0, _image.size.width * _scale, _image.size.height * _scale)];
    UIGraphicsPopContext();
}

@end

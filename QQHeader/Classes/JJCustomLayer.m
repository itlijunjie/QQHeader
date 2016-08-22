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
@property (nonatomic, assign) BOOL isClip;

@end

@implementation JJCustomLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        _degrees = 0;
        _isClip = YES;
    }
    return self;
}

+ (JJCustomLayer *)createWithImage:(UIImage *)image degrees:(NSInteger)degrees isClip:(BOOL)isClip
{
    JJCustomLayer *res = [JJCustomLayer layer];
    [res updateWithImage:image degrees:degrees isClip:isClip];
    return res;
}

- (void)updateWithImage:(UIImage *)image degrees:(NSInteger)degrees isClip:(BOOL)isClip
{
    _degrees = degrees;
    _image = image;
    _isClip = isClip;
    self.contentsScale = [UIScreen mainScreen].scale;
}

- (void)drawInContext:(CGContextRef)context
{
    [super drawInContext:context];
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
    
//    scale 由于输出的图不会进行缩放，所以缩放因子等于屏幕的scale即可
    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0);
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithCGPath:path];
    [bezierPath closePath];
    [bezierPath addClip];
    [_image drawInRect:self.bounds];
    UIImage *maskedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIGraphicsPushContext( context );
    [maskedImage drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    UIGraphicsPopContext();
}

@end

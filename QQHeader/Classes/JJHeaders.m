//
//  JJHeaders.m
//  QQHeader
//
//  Created by lijunjie on 16/1/5.
//  Copyright © 2016年 ljj. All rights reserved.
//

#import "JJHeaders.h"
#import "JJCustomLayer.h"

static inline float radians(double degrees) { return degrees * M_PI / 180; }

@implementation JJHeaders

+ (UIView *)createHeaderView:(CGFloat)headerWH images:(NSArray *)images
{
    if (!images || [images count] <= 0) {
        return nil;
    }
    
    UIView *view = nil;
    switch ([images count]) {
        case 1: {
            view = [JJHeaders getView1:headerWH images:images];
            break;
        }
        case 2: {
            view = [JJHeaders getView2:headerWH images:images];
            break;
        }
        case 3: {
            view = [JJHeaders getView3:headerWH images:images];
            break;
        }
        case 4: {
            view = [JJHeaders getView4:headerWH images:images];
            break;
        }
        case 5: {
            view = [JJHeaders getView5:headerWH images:images];
            break;
        }
        default:
            break;
    }
    return view;
}

+ (UIView *)getView1:(CGFloat)headerWH images:(NSArray *)images
{
    CGFloat diameter = headerWH;
    CGFloat r = diameter / 2;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, headerWH, headerWH)];
    view.backgroundColor = [UIColor clearColor];
    
    UIImage *image = images[0];
    JJCustomLayer *layer0 = [JJCustomLayer createWithImage:image degrees:0 isClip:NO];
    layer0.frame = [JJHeaders getRect:CGPointMake(r, r) size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    return view;
}

+ (UIView *)getView2:(CGFloat)headerWH images:(NSArray *)images
{
    CGFloat diameter = (headerWH + headerWH - sqrtf(2) * headerWH);
    CGFloat r = diameter / 2;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, headerWH, headerWH)];
    view.backgroundColor = [UIColor clearColor];
    
    UIImage *image = images[0];
    CGSize imageSize = image.size;
    CGFloat correctScale = headerWH / imageSize.height;
    JJCustomLayer *layer0 = [JJCustomLayer createWithImage:image degrees:0 isClip:NO];
    layer0.frame = [JJHeaders getRect:CGPointMake(r, r) size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    image = images[1];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    JJCustomLayer *layer1 = [JJCustomLayer createWithImage:image degrees:180 - 45 isClip:YES];
    layer1.frame = [JJHeaders getRect:CGPointMake(r + sqrtf(2) * diameter / 2, r + sqrtf(2) * diameter / 2) size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer1];
    [layer1 setNeedsDisplay];
    
    return view;
}

+ (UIView *)getView3:(CGFloat)headerWH images:(NSArray *)images
{
    CGFloat diameter = headerWH/2;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, headerWH, headerWH)];
    view.backgroundColor = [UIColor clearColor];
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 2 * diameter, diameter + sqrtf(3) / 2 * diameter);
    
    UIImage *image = images[0];
    CGSize imageSize = image.size;
    CGFloat correctScale = headerWH / imageSize.height;
    CGPoint center0 = CGPointMake(diameter, diameter / 2);
    JJCustomLayer *layer0 = [JJCustomLayer createWithImage:image degrees:30 isClip:YES];
    layer0.frame = [JJHeaders getRect:center0 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    image = images[1];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center1 = CGPointMake(center0.x - diameter * sin(radians(30)), diameter / 2 + diameter * cos(radians(30)));
    JJCustomLayer *layer1 = [JJCustomLayer createWithImage:image degrees:270 isClip:YES];
    layer1.frame = [JJHeaders getRect:center1 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer1];
    [layer1 setNeedsDisplay];
    
    image = images[2];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center2 = CGPointMake(center1.x + diameter, center1.y);
    JJCustomLayer *layer2 = [JJCustomLayer createWithImage:image degrees:180 - 30 isClip:YES];
    layer2.frame = [JJHeaders getRect:center2 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer2];
    [layer2 setNeedsDisplay];
    
    CGRect f = layer.frame;
    f.origin.y = (view.frame.size.height - f.size.height) / 2;
    layer.frame = f;
    [view.layer addSublayer:layer];
    return view;
}

+ (UIView *)getView4:(CGFloat)headerWH images:(NSArray *)images
{
    CGFloat diameter = headerWH/2;
    CGFloat r = diameter / 2;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, headerWH, headerWH)];
    view.backgroundColor = [UIColor clearColor];
    
    UIImage *image = images[0];
    CGSize imageSize = image.size;
    CGFloat correctScale = headerWH / imageSize.height;
    CGPoint center0 = CGPointMake(r, r);
    JJCustomLayer *layer0 = [JJCustomLayer createWithImage:image degrees:0 isClip:YES];
    layer0.frame = [JJHeaders getRect:center0 size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    image = images[1];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center1 = CGPointMake(center0.x, center0.y + diameter);
    JJCustomLayer *layer1 = [JJCustomLayer createWithImage:image degrees:270 isClip:YES];
    layer1.frame = [JJHeaders getRect:center1 size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer1];
    [layer1 setNeedsDisplay];
    
    image = images[2];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center2 = CGPointMake(center1.x + diameter, center1.y);
    JJCustomLayer *layer2 = [JJCustomLayer createWithImage:image degrees:180 isClip:YES];
    layer2.frame = [JJHeaders getRect:center2 size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer2];
    [layer2 setNeedsDisplay];
    
    image = images[3];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center3 = CGPointMake(center2.x, center2.y - diameter);
    JJCustomLayer *layer3 = [JJCustomLayer createWithImage:image degrees:90 isClip:YES];
    layer3.frame = [JJHeaders getRect:center3 size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer3];
    [layer3 setNeedsDisplay];
    return view;
}

+ (UIView *)getView5:(CGFloat)headerWH images:(NSArray *)images
{
    CGFloat r = headerWH / 2 / (2 * sin(radians(54)) + 1);
    CGFloat diameter = r * 2;
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0,headerWH, r / tan(radians(36)) + r / sin(radians(36)) + diameter);
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, headerWH, headerWH)];
    view.backgroundColor = [UIColor clearColor];
    
    UIImage *image = images[0];
    CGSize imageSize = image.size;
    CGFloat correctScale = headerWH / imageSize.height;
    CGPoint center0 = CGPointMake(headerWH / 2, r);
    JJCustomLayer *layer0 = [JJCustomLayer createWithImage:image degrees:54 isClip:YES];
    layer0.frame = [JJHeaders getRect:center0 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    image = images[1];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center1 = CGPointMake(center0.x - diameter * sin(radians(54)), center0.y + diameter * cos(radians(54)));
    JJCustomLayer *layer1 = [JJCustomLayer createWithImage:image degrees:270 + 72 isClip:YES];
    layer1.frame = [JJHeaders getRect:center1 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer1];
    [layer1 setNeedsDisplay];
    
    image = images[2];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center2 = CGPointMake(center1.x + diameter * cos(radians(72)), center1.y + diameter * sin(radians(72)));
    JJCustomLayer *layer2 = [JJCustomLayer createWithImage:image degrees:270 isClip:YES];
    layer2.frame = [JJHeaders getRect:center2 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer2];
    [layer2 setNeedsDisplay];
    
    image = images[3];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center3 = CGPointMake(center2.x + diameter, center2.y);
    JJCustomLayer *layer3 = [JJCustomLayer createWithImage:image degrees:180 + 18 isClip:YES];
    layer3.frame = [JJHeaders getRect:center3 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer3];
    [layer3 setNeedsDisplay];
    
    image = images[4];
    imageSize = image.size;
    correctScale = headerWH / imageSize.height;
    CGPoint center4 = CGPointMake(center3.x + diameter * cos(radians(72)), center3.y - diameter * sin(radians(72)));
    JJCustomLayer *layer4 = [JJCustomLayer createWithImage:image degrees:90 + 36 isClip:YES];
    layer4.frame = [JJHeaders getRect:center4 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer4];
    [layer4 setNeedsDisplay];
    
    CGRect f = layer.frame;
    f.origin.y = (view.frame.size.height - f.size.height) / 2;
    layer.frame = f;
    [view.layer addSublayer:layer];
    
    return view;
}

+ (CGRect)getRect:(CGPoint)center size:(CGSize)size
{
    return CGRectMake(center.x - size.width / 2, center.y - size.height / 2, size.width, size.height);
}

@end

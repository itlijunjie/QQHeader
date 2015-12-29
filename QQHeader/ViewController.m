//
//  ViewController.m
//  QQHeader
//
//  Created by ljj on 14-8-23.
//  Copyright (c) 2014年 ljj. All rights reserved.
//

#import "ViewController.h"

#import "CustomLayer.h"

#define ViewDiameter 140

#define ViewRadius (ViewDiameter/2)

@interface ViewController ()

@end

static inline float radians(double degrees) { return degrees * M_PI / 180; }

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *view2 = [self getView2];
    view2.center = CGPointMake(85, 200);
    [self.view addSubview:view2];
    
    UIView *view3 = [self getView3];
    view3.center = CGPointMake(235, 200);
    [self.view addSubview:view3];
    
    UIView *view4 = [self getView4];
    view4.center = CGPointMake(85, 350);
    [self.view addSubview:view4];

    UIView *view5 = [self getView5];
    view5.center = CGPointMake(235, 350);
    [self.view addSubview:view5];
    
}

- (UIView *)getView2
{
    
    CGFloat diameter = (ViewDiameter + ViewDiameter - sqrtf(2) * ViewDiameter);
    CGFloat r = diameter / 2;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ViewDiameter, ViewDiameter)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    
    CustomLayer *layer0 = [CustomLayer layer];
    layer0.imageName = @"0.png";
    layer0.isClip = NO;
    layer0.scale = r / ViewRadius;
    layer0.frame = [self getRect:CGPointMake(ViewRadius - sqrtf(2) * diameter / 4, ViewRadius - sqrtf(2) * diameter / 4) size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    CustomLayer *layer1 = [CustomLayer layer];
    layer1.imageName = @"1.png";
    layer1.degrees = 180 - 45;
    layer1.scale = r / ViewRadius;
    layer1.frame = [self getRect:CGPointMake(ViewRadius + sqrtf(2) * diameter / 4, ViewRadius + sqrtf(2) * diameter / 4) size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer1];
    [layer1 setNeedsDisplay];

    return view;
}

- (UIView *)getView3
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ViewDiameter, ViewDiameter)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];\
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, ViewDiameter, ViewRadius + sqrtf(3) / 2 * ViewRadius);
    
    CGPoint center0 = CGPointMake(ViewRadius, ViewRadius / 2);
    CustomLayer *layer0 = [CustomLayer layer];
    layer0.imageName = @"0.png";
    layer0.degrees = 30;
    layer0.frame = [self getRect:center0 size:CGSizeMake(ViewRadius, ViewRadius)];
    [layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    CGPoint center1 = CGPointMake(center0.x - ViewRadius * sin(radians(30)), ViewRadius / 2 + ViewRadius * cos(radians(30)));
    CustomLayer *layer1 = [CustomLayer layer];
    layer1.imageName = @"3.png";
    layer1.degrees = 270;
    layer1.frame = [self getRect:center1 size:CGSizeMake(ViewRadius, ViewRadius)];
    [layer addSublayer:layer1];
    [layer1 setNeedsDisplay];
    
    CGPoint center2 = CGPointMake(center1.x + ViewRadius, center1.y);
    CustomLayer *layer2 = [CustomLayer layer];
    layer2.imageName = @"2.png";
    layer2.degrees = 180 - 30;
    layer2.frame = [self getRect:center2 size:CGSizeMake(ViewRadius, ViewRadius)];
    [layer addSublayer:layer2];
    [layer2 setNeedsDisplay];
    
    CGRect f = layer.frame;
    f.origin.y = (view.frame.size.height - f.size.height) / 2;
    layer.frame = f;
    [view.layer addSublayer:layer];
    return view;
}

- (UIView *)getView4
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ViewDiameter, ViewDiameter)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    
    CustomLayer *layer0 = [CustomLayer layer];
    layer0.imageName = @"0.png";
    layer0.frame = [self getRect:CGPointMake(ViewRadius/2, ViewRadius/2) size:CGSizeMake(ViewRadius, ViewRadius)];
    [view.layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    CustomLayer *layer1 = [CustomLayer layer];
    layer1.imageName = @"1.png";
    layer1.degrees = 90;
    layer1.frame = [self getRect:CGPointMake(ViewRadius + ViewRadius/2, ViewRadius/2) size:CGSizeMake(ViewRadius, ViewRadius)];
    [view.layer addSublayer:layer1];
    [layer1 setNeedsDisplay];
    
    CustomLayer *layer2 = [CustomLayer layer];
    layer2.imageName = @"2.png";
    layer2.degrees = 180;
    layer2.frame = [self getRect:CGPointMake(ViewRadius/2 + ViewRadius, ViewRadius/2 + ViewRadius) size:CGSizeMake(ViewRadius, ViewRadius)];
    [view.layer addSublayer:layer2];
    [layer2 setNeedsDisplay];
    
    CustomLayer *layer3 = [CustomLayer layer];
    layer3.imageName = @"3.png";
    layer3.degrees = 270;
    layer3.frame = [self getRect:CGPointMake(ViewRadius/2, ViewRadius/2 + ViewRadius) size:CGSizeMake(ViewRadius, ViewRadius)];
    [view.layer addSublayer:layer3];
    [layer3 setNeedsDisplay];
    return view;
}

- (UIView *)getView5
{
    CGFloat r = ViewRadius / (2 * sin(radians(54)) + 1);
    CGFloat diameter = r * 2;
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0,ViewDiameter, r / tan(radians(36)) + r / sin(radians(36)) + diameter);
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0,ViewDiameter, ViewDiameter)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];

    CGPoint center0 = CGPointMake(ViewRadius, r);
    CustomLayer *layer0 = [CustomLayer layer];
    layer0.imageName = @"0.png";
    layer0.degrees = 54;
    layer0.scale = r / ViewRadius;
    layer0.frame = [self getRect:center0 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    CGPoint center1 = CGPointMake(center0.x - diameter * sin(radians(54)), center0.y + diameter * cos(radians(54)));
    CustomLayer *layer1 = [CustomLayer layer];
    layer1.imageName = @"1.png";
    layer1.degrees = 270 + 72;
    layer1.scale = r / ViewRadius;
    layer1.frame = [self getRect:center1 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer1];
    [layer1 setNeedsDisplay];
    
    CGPoint center2 = CGPointMake(center1.x + diameter * cos(radians(72)), center1.y + diameter * sin(radians(72)));
    CustomLayer *layer2 = [CustomLayer layer];
    layer2.imageName = @"2.png";
    layer2.degrees = 270;
    layer2.scale = r / ViewRadius;
    layer2.frame = [self getRect:center2 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer2];
    [layer2 setNeedsDisplay];
    
    CGPoint center3 = CGPointMake(center2.x + diameter, center2.y);
    CustomLayer *layer3 = [CustomLayer layer];
    layer3.imageName = @"3.png";
    layer3.degrees = 180 + 18;
    layer3.scale = r / ViewRadius;
    layer3.frame = [self getRect:center3 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer3];
    [layer3 setNeedsDisplay];
    
    CGPoint center4 = CGPointMake(center3.x + diameter * cos(radians(72)), center3.y - diameter * sin(radians(72)));
    CustomLayer *layer4 = [CustomLayer layer];
    layer4.imageName = @"2.png";
    layer4.degrees = 90 + 36;
    layer4.scale = r / ViewRadius;
    layer4.frame = [self getRect:center4 size:CGSizeMake(diameter, diameter)];
    [layer addSublayer:layer4];
    [layer4 setNeedsDisplay];
    
    CGRect f = layer.frame;
    f.origin.y = (view.frame.size.height - f.size.height) / 2;
    layer.frame = f;
    [view.layer addSublayer:layer];
    
    return view;
}

- (IBAction)btnAction:(id)sender {
    NSLog(@"aa");
}


- (CGRect)getRect:(CGPoint)center size:(CGSize)size
{
    return CGRectMake(center.x - size.width / 2, center.y - size.height / 2, size.width, size.height);
}

@end

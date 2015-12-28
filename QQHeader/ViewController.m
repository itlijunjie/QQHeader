//
//  ViewController.m
//  QQHeader
//
//  Created by ljj on 14-8-23.
//  Copyright (c) 2014年 ljj. All rights reserved.
//

#import "ViewController.h"

#import "CustomLayer.h"

#define ViewOffset 70

#define viewwh 70

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:[self getView2]];
}

- (UIView *)getView2 {
    
    CGFloat diameter = (140 + 140 - sqrtf(2) * 140);
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, viewwh + ViewOffset, viewwh + ViewOffset)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    
    CustomLayer *layer0 = [CustomLayer layer];
    layer0.imageName = @"0.png";
    layer0.isClip = NO;
    layer0.scale = diameter / 70;
    layer0.frame = [self getRect:CGPointMake(viewwh - sqrtf(2) * diameter / 4, viewwh - sqrtf(2) * diameter / 4) size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    CustomLayer *layer1 = [CustomLayer layer];
    layer1.imageName = @"1.png";
    layer1.degrees = 180 - 45;
    layer1.scale = diameter / 70;
    layer1.frame = [self getRect:CGPointMake(viewwh + sqrtf(2) * diameter / 4, viewwh + sqrtf(2) * diameter / 4) size:CGSizeMake(diameter, diameter)];
    [view.layer addSublayer:layer1];
    [layer1 setNeedsDisplay];

    return view;
}

- (UIView *)getView3 {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, viewwh + ViewOffset, viewwh + ViewOffset)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    
    return view;
}

- (UIView *)getView4 {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, viewwh + ViewOffset, viewwh + ViewOffset)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    
    CustomLayer *layer0 = [CustomLayer layer];
    layer0.imageName = @"0.png";
    layer0.frame = [self getRect:CGPointMake(viewwh/2, viewwh/2) size:CGSizeMake(viewwh, viewwh)];
    [view.layer addSublayer:layer0];
    [layer0 setNeedsDisplay];
    
    CustomLayer *layer1 = [CustomLayer layer];
    layer1.imageName = @"1.png";
    layer1.degrees = 90;
    layer1.frame = [self getRect:CGPointMake(ViewOffset + viewwh/2, viewwh/2) size:CGSizeMake(viewwh, viewwh)];
    [view.layer addSublayer:layer1];
    [layer1 setNeedsDisplay];
    
    CustomLayer *layer2 = [CustomLayer layer];
    layer2.imageName = @"2.png";
    layer2.degrees = 180;
    layer2.frame = [self getRect:CGPointMake(viewwh/2 + ViewOffset, viewwh/2 + ViewOffset) size:CGSizeMake(viewwh, viewwh)];
    [view.layer addSublayer:layer2];
    [layer2 setNeedsDisplay];
    
    CustomLayer *layer3 = [CustomLayer layer];
    layer3.imageName = @"3.png";
    layer3.degrees = 270;
    layer3.frame = [self getRect:CGPointMake(viewwh/2, viewwh/2 + ViewOffset) size:CGSizeMake(viewwh, viewwh)];
    [view.layer addSublayer:layer3];
    [layer3 setNeedsDisplay];
    return view;
}

- (UIView *)getView5 {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, viewwh + ViewOffset, viewwh + ViewOffset)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    
    return view;
}

- (IBAction)btnAction:(id)sender {
    NSLog(@"aa");
}

- (CAAnimation*)scaleAnimation{
    CABasicAnimation *scaleAnim = [CABasicAnimation animationWithKeyPath:@"transform"];
    scaleAnim.duration = 0.1;
    scaleAnim.repeatCount = 1;
    scaleAnim.fromValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1, 1, 1.0)];
    scaleAnim.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.5, 0.5, 1.0)];
    scaleAnim.removedOnCompletion = NO;
	scaleAnim.fillMode = kCAFillModeForwards;
	return scaleAnim;
}


- (CGRect)getRect:(CGPoint)center size:(CGSize)size
{
    return CGRectMake(center.x - size.width / 2, center.y - size.height / 2, size.width, size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

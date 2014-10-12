//
//  ViewController.m
//  QQHeader
//
//  Created by ljj on 14-8-23.
//  Copyright (c) 2014年 ljj. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "CustomView1.h"
#import "CustomView2.h"
#import "CustomView3.h"

#define ViewOffset 140

#define viewwh 140

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor brownColor];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(20, 100, viewwh + ViewOffset, viewwh + ViewOffset)];
    
    view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    
    CustomView *view0 = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, viewwh, viewwh)];
    view0.center = CGPointMake(viewwh/2 + ViewOffset, viewwh/2 + ViewOffset);
    
    CustomView1 *view1 = [[CustomView1 alloc] initWithFrame:CGRectMake(0, 0, viewwh, viewwh)];
    view1.center = CGPointMake(ViewOffset + viewwh/2, viewwh/2);
    
    CustomView2 *view2 = [[CustomView2 alloc] initWithFrame:CGRectMake(0, 0, viewwh, viewwh)];
    view2.center = CGPointMake(viewwh/2, viewwh/2);
    
    
    CustomView3 *view3 = [[CustomView3 alloc] initWithFrame:CGRectMake(0, 0, viewwh, viewwh)];
    view3.center = CGPointMake(viewwh/2, viewwh/2 + ViewOffset);
    
    [view addSubview:view0];
    [view addSubview:view1];
    [view addSubview:view2];
    [view addSubview:view3];
    
    [view.layer addAnimation:[self scaleAnimation] forKey:@"transform"];
    
    [self.view addSubview:view];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

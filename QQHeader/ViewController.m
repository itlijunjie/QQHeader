//
//  ViewController.m
//  QQHeader
//
//  Created by ljj on 14-8-23.
//  Copyright (c) 2014年 ljj. All rights reserved.
//

#import "ViewController.h"
#import "JJCustomLayer.h"
#import "JJHeaders.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *view1 = [JJHeaders createHeaderView:140
                                         images:@[[UIImage imageNamed:@"0.png"]]
                                        imageWH:140];
    CGPoint center = self.view.center;
    view1.center = CGPointMake(center.x, 90);
    [self.view addSubview:view1];
    
    UIView *view2 = [JJHeaders createHeaderView:140
                                         images:@[[UIImage imageNamed:@"0.png"],
                                                  [UIImage imageNamed:@"1.png"]]
                                        imageWH:140];
    view2.center = CGPointMake(85, 240);
    [self.view addSubview:view2];
    
    UIView *view3 = [JJHeaders createHeaderView:140
                                         images:@[[UIImage imageNamed:@"0.png"],
                                                  [UIImage imageNamed:@"1.png"],
                                                  [UIImage imageNamed:@"2.png"]]
                                        imageWH:140];
    view3.center = CGPointMake(235, 240);
    [self.view addSubview:view3];

    UIView *view4 = [JJHeaders createHeaderView:140
                                         images:@[[UIImage imageNamed:@"0.png"],
                                                  [UIImage imageNamed:@"1.png"],
                                                  [UIImage imageNamed:@"2.png"],
                                                  [UIImage imageNamed:@"3.png"]]
                                        imageWH:140];
    view4.center = CGPointMake(85, 390);
    [self.view addSubview:view4];

    UIView *view5 = [JJHeaders createHeaderView:140
                                         images:@[[UIImage imageNamed:@"0.png"],
                                                  [UIImage imageNamed:@"1.png"],
                                                  [UIImage imageNamed:@"2.png"],
                                                  [UIImage imageNamed:@"3.png"],
                                                  [UIImage imageNamed:@"2.png"]]
                                        imageWH:140];
    view5.center = CGPointMake(235, 390);
    [self.view addSubview:view5];
    
}

@end

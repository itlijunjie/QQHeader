//
//  ViewController.m
//  QQHeader
//
//  Created by ljj on 14-8-23.
//  Copyright (c) 2014年 ljj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat viewWH = 140;
    
    UIView *view1 = [JJHeaders createHeaderView:viewWH
                                         images:@[[UIImage imageNamed:@"0"]]];
    CGPoint center = self.view.center;
    view1.center = CGPointMake(center.x, 90);
    view1.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [self.view addSubview:view1];
    
    UIView *view2 = [JJHeaders createHeaderView:viewWH
                                         images:@[[UIImage imageNamed:@"0"],
                                                  [UIImage imageNamed:@"1"]]];
    view2.center = CGPointMake(85, 240);
    view2.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [self.view addSubview:view2];
    
    UIView *view3 = [JJHeaders createHeaderView:viewWH
                                         images:@[[UIImage imageNamed:@"0"],
                                                  [UIImage imageNamed:@"1"],
                                                  [UIImage imageNamed:@"2"]]];
    view3.center = CGPointMake(235, 240);
    view3.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [self.view addSubview:view3];

    UIView *view4 = [JJHeaders createHeaderView:viewWH
                                         images:@[[UIImage imageNamed:@"0"],
                                                  [UIImage imageNamed:@"1"],
                                                  [UIImage imageNamed:@"2"],
                                                  [UIImage imageNamed:@"3"]]];
    view4.center = CGPointMake(85, 390);
    view4.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [self.view addSubview:view4];

    UIView *view5 = [JJHeaders createHeaderView:viewWH
                                         images:@[[UIImage imageNamed:@"0"],
                                                  [UIImage imageNamed:@"1"],
                                                  [UIImage imageNamed:@"2"],
                                                  [UIImage imageNamed:@"3"],
                                                  [UIImage imageNamed:@"4"]]];
    view5.center = CGPointMake(235, 390);
    view5.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
    [self.view addSubview:view5];
    
}

@end

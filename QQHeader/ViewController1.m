//
//  ViewController1.m
//  QQHeader
//
//  Created by lijunjie on 15/12/28.
//  Copyright © 2015年 ljj. All rights reserved.
//

#import "ViewController1.h"
#import "CustomLayer.h"

#define ViewOffset 140

#define viewwh 140

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CustomLayer *layer = [CustomLayer layer];
    layer.frame = CGRectMake(100, 300, viewwh, viewwh);
    [self.view.layer addSublayer:layer];
    [layer setNeedsDisplay];
    
    CustomLayer *layer1 = [CustomLayer layer];
    layer1.degrees = 180;
    layer1.frame = CGRectMake(100, 100, viewwh, viewwh);
    [self.view.layer addSublayer:layer1];
    [layer1 setNeedsDisplay];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

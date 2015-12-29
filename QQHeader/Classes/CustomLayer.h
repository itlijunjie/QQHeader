//
//  CustomLayer.h
//  QQHeader
//
//  Created by lijunjie on 15/12/28.
//  Copyright © 2015年 ljj. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CustomLayer : CALayer

@property (nonatomic, assign) NSInteger degrees;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, assign) CGFloat scale;
@property (nonatomic, assign) BOOL isClip;

@end

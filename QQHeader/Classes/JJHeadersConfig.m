//
//  JJHeadersConfig.m
//  QQHeader
//
//  Created by lijunjie on 16/3/23.
//  Copyright © 2016年 ljj. All rights reserved.
//

#import "JJHeadersConfig.h"

@implementation JJHeadersConfig

+ (instancetype)share
{
    static JJHeadersConfig *config;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        config = [[JJHeadersConfig alloc] init];
    });
    return config;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _headerClipHalfAngle = 30.0f;
    }
    return self;
}

@end

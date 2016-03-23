//
//  JJHeadersConfig.h
//  QQHeader
//
//  Created by lijunjie on 16/3/23.
//  Copyright © 2016年 ljj. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kHeaderClipHalfAngle [JJHeadersConfig share].headerClipHalfAngle

@interface JJHeadersConfig : NSObject

@property (nonatomic, assign) CGFloat headerClipHalfAngle;

+ (instancetype)share;

@end

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


/**
 配置裁剪多大角度，值为裁剪角度的一半，如果裁剪角度为60，则设置headerClipHalfAngle = 30，默认值为30。
 */
@property (nonatomic, assign) CGFloat headerClipHalfAngle;

+ (instancetype)share;

@end

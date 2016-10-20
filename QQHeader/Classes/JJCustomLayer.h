//
//  JJCustomLayer.h
//  QQHeader
//
//  Created by lijunjie on 15/12/28.
//  Copyright © 2015年 ljj. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface JJCustomLayer : CALayer


/**
 创建JJCustomLayer

 @param image   UIImage
 @param degrees 裁剪区域先转角度，
 @param isClip  是否需要裁剪

 @return 返回创建完成的JJCustomLayer对象
 */
+ (JJCustomLayer *)createWithImage:(UIImage *)image degrees:(NSInteger)degrees isClip:(BOOL)isClip;

@end

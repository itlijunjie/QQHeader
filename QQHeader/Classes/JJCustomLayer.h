//
//  JJCustomLayer.h
//  QQHeader
//
//  Created by lijunjie on 15/12/28.
//  Copyright © 2015年 ljj. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface JJCustomLayer : CALayer

+ (JJCustomLayer *)createWithImage:(UIImage *)image scale:(CGFloat)scale degrees:(NSInteger)degrees isClip:(BOOL)isClip;

@end

//
//  JJHeaders.h
//  QQHeader
//
//  Created by lijunjie on 16/1/5.
//  Copyright © 2016年 ljj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JJHeaders : NSObject

/**
 创建一个Header

 @param headerWH 最大头像的宽高，也就是只有各个头像构成的Header的宽高
 @param images   所有的头像UIImage数组

 @return 返回创建好的头像view
 */
+ (UIView *)createHeaderView:(CGFloat)headerWH images:(NSArray<UIImage *> *)images;

@end

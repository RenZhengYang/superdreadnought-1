//
//  HyperLinks.h
//  superdreadnought
//
//  Created by mac on 16/9/22.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HyperLinks : UIButton
/*
 * url颜色
 */
@property(strong,nonatomic)UIColor *lineColor;
/*
 * 是否高亮
 */
@property(assign,nonatomic)BOOL isHighlight;
/*
 * 类方法对外留接口
 */
+ (HyperLinks *)hyperlinksButton;
-(void)setColor:(UIColor*)color;
@end

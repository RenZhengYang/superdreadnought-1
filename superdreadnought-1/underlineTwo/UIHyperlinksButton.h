//
//  UIHyperlinksButton.h
//  UIHyperlinksButtonDemo
//
//  Created by yaoqianyi on 13-8-13.
//  Copyright (c) 2013年 yaoqianyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIHyperlinksButton : UIButton
/*
 * url颜色
 */
@property(strong,nonatomic)UIColor *lineColor;
/*
 * 是否高亮
 */
@property(assign,nonatomic)BOOL isHighlight;
-(void)setColor:(UIColor*)color;
+ (UIHyperlinksButton *) hyperlinksButton;
@end

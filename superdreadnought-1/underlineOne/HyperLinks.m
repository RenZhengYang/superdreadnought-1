//
//  HyperLinks.m
//  superdreadnought
//
//  Created by mac on 16/9/22.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "HyperLinks.h"

@implementation HyperLinks

/*
 * 创建
 */
+ (HyperLinks *)hyperlinksButton
{
    HyperLinks *btn = [[HyperLinks alloc]init];  // 创建
    return btn;
}
#pragma mark- draw超文本
/*
 * 超文本链接的绘制
 */
- (void)drawRect:(CGRect)rect
{
     //  1.创建范围
    CGRect textRect = self.titleLabel.frame;
    //   2.开启上下文
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    //    3. 下划线
    CGFloat descender = self.titleLabel.font.descender;
    if ([_lineColor isKindOfClass:[UIColor class]]){
        CGContextSetStrokeColorWithColor(contextRef, _lineColor.CGColor);
    };
    //     3.1.设置初始点
    CGContextMoveToPoint(contextRef, textRect.origin.x, textRect.origin.y + textRect.size.height +descender +5);
    //     3.2. 设置结束点
    CGContextAddLineToPoint(contextRef, textRect.origin.x + textRect.size.width,textRect.origin.y + textRect.size.height +descender +5);
     //       4. 关闭上下文
    CGContextClosePath(contextRef);
    //         5. 绘制路径
    CGContextDrawPath(contextRef, kCGPathStroke);
}

- (void)setColor:(UIColor *)color
{
    _lineColor = color;
    [self setNeedsDisplay];

}
#pragma mark- 实现按钮的触摸
/*
 * 触摸开始
 */
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    _isHighlight = YES;
    [self setColor:self.titleLabel.textColor];
}
/*
 * 触摸移动
 */
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
}
/*
 * 触摸结束
 */
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    _isHighlight = NO;
    [self setColor:self.titleLabel.highlightedTextColor];
}
/*
 * 触摸取消
 */
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesCancelled:touches withEvent:event];
    [self setColor:self.titleLabel.highlightedTextColor];
}
@end

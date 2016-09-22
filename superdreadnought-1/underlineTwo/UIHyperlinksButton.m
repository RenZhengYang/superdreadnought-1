//
//  UIHyperlinksButton.m
//  UIHyperlinksButtonDemo
//
//  Created by yaoqianyi on 13-8-13.
//  Copyright (c) 2013年 yaoqianyi. All rights reserved.
//

#import "UIHyperlinksButton.h"

@implementation UIHyperlinksButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (UIHyperlinksButton*) hyperlinksButton {
    UIHyperlinksButton* button = [[UIHyperlinksButton alloc] init];
    return button;
}

-(void)setColor:(UIColor *)color{
    _lineColor = color;
    [self setNeedsDisplay];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    _isHighlight = YES;
    [self setColor:self.titleLabel.textColor];
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesMoved:touches withEvent:event];
    
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesEnded:touches withEvent:event];
    _isHighlight = NO;
    [self setColor:self.titleLabel.highlightedTextColor];
    
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesCancelled:touches withEvent:event];
    [self setColor:self.titleLabel.highlightedTextColor];
}

- (void) drawRect:(CGRect)rect {
    CGRect textRect = self.titleLabel.frame;
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    if (_isHighlight) {
        CGContextSetRGBFillColor(contextRef, 0.1, 0.1, 0.3, 1.0);
        CGContextFillRect(contextRef, textRect);
        CGContextStrokePath(contextRef);
    }
    CGFloat descender = self.titleLabel.font.descender;
    if([_lineColor isKindOfClass:[UIColor class]]){
        CGContextSetStrokeColorWithColor(contextRef, _lineColor.CGColor);
    }
    
    CGContextMoveToPoint(contextRef, textRect.origin.x, textRect.origin.y + textRect.size.height + descender+1);
    CGContextAddLineToPoint(contextRef, textRect.origin.x + textRect.size.width, textRect.origin.y + textRect.size.height + descender+1);
    
    CGContextClosePath(contextRef);
    CGContextDrawPath(contextRef, kCGPathStroke);
}


@end

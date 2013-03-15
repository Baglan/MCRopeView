//
//  MCRopeView.m
//  MCRopeConnection
//
//  Created by Baglan on 3/15/13.
//  Copyright (c) 2013 MobileCreators. All rights reserved.
//

#import "MCRopeView.h"

@implementation MCRopeView {
    __strong UIBezierPath * _path;
    __strong UIColor * _lineColor;
    __strong UIColor * _outlineColor;
    CGFloat _lineWidth;
}

- (id)initWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint
{
    return [self initWithStartPoint:startPoint endPoint:endPoint lineWidth:2.0 lineColor:[UIColor whiteColor] outlineColor:[UIColor grayColor]];
}

- (id)initWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor outlineColor:(UIColor *)outlineColor
{
    CGFloat dx = endPoint.x - startPoint.x;
    UIBezierPath * path = [UIBezierPath bezierPath];
    [path moveToPoint:startPoint];
    [path addCurveToPoint:endPoint controlPoint1:CGPointMake(startPoint.x + dx / 2, startPoint.y) controlPoint2:CGPointMake(endPoint.x - dx / 2, endPoint.y)];
    path.lineWidth = lineWidth;
    return [self initWithPath:path lineColor:lineColor outlineColor:outlineColor];
}

- (id)initWithPath:(UIBezierPath *)path lineColor:(UIColor *)lineColor outlineColor:(UIColor *)outlineColor
{
    CGRect frame = path.bounds;
    CGFloat lineBuffer = path.lineWidth + 1;
    CGAffineTransform transform = CGAffineTransformMakeTranslation(-frame.origin.x + lineBuffer, -frame.origin.y + lineBuffer);
    frame.origin.x -= lineBuffer;
    frame.origin.y -= lineBuffer;
    frame.size.width += lineBuffer * 2;
    frame.size.height += lineBuffer * 2;
    self = [super initWithFrame:frame];
    if (self) {
        _path = [path copy];
        [_path applyTransform:transform];
        _lineColor = lineColor;
        _outlineColor = outlineColor;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGFloat lineWidth = _path.lineWidth;
    
    if (_outlineColor) {
        [_outlineColor setStroke];
        _path.lineWidth = lineWidth + 1;
        _path.lineCapStyle = kCGLineCapRound;
        _path.lineJoinStyle = kCGLineJoinRound;
        [_path stroke];
    }
    
    [_lineColor setStroke];
    _path.lineWidth = lineWidth;
    _path.lineCapStyle = kCGLineCapRound;
    _path.lineJoinStyle = kCGLineJoinRound;
    [_path stroke];
}

@end

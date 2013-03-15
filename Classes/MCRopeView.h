//
//  MCRopeView.h
//  MCRopeConnection
//
//  Created by Baglan on 3/15/13.
//  Copyright (c) 2013 MobileCreators. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCRopeView : UIView

- (id)initWithPath:(UIBezierPath *)path lineColor:(UIColor *)lineColor outlineColor:(UIColor *)outlineColor;
- (id)initWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor outlineColor:(UIColor *)outlineColor;
- (id)initWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

@end

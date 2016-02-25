//
//  UIBezierPath+Pentagon.m
//  shadow__of__userHead
//
//  Created by 谢鹏翔 on 16/2/25.
//  Copyright © 2016年 谢鹏翔. All rights reserved.
//

#import "UIBezierPath+Pentagon.h"

@implementation UIBezierPath (Pentagon)

+(UIBezierPath *)getPentagonPath
{
    float viewWidth = 80;
    float viewRadius = 5;
    float sin36 = sin(M_PI * 36/180);
    float cos36 = cos(M_PI * 36/180);
    float sin18 = sin(M_PI * 18/180);
    float cos18 = cos(M_PI * 18/180);
    
    UIBezierPath * path = [UIBezierPath bezierPath];
    path.lineWidth = 1;
    
    
    [[UIColor whiteColor] setStroke];
    //    [path moveToPoint:CGPointMake((viewWidth / 2), 0)];
    [path moveToPoint:CGPointMake((viewWidth / 2) - viewRadius * cos36, viewRadius * sin36)];
    [path addQuadCurveToPoint:CGPointMake(viewWidth/2 + viewRadius * cos36, viewRadius * sin36) controlPoint:CGPointMake((viewWidth / 2), 0)];
    
    
    //    [path addLineToPoint:CGPointMake(viewWidth , viewWidth * 0.3632)];
    [path addLineToPoint:CGPointMake(viewWidth-viewRadius*cos36, viewWidth*sin36/cos36 / 2 -viewRadius*sin36)];
    [path addQuadCurveToPoint:CGPointMake(viewWidth-viewRadius*sin18, viewWidth*sin36/cos36 / 2 +viewRadius*cos18) controlPoint:CGPointMake(viewWidth, viewWidth*sin36/cos36 / 2)];
    
    
    //    [path addLineToPoint:CGPointMake(viewWidth * 0.8, viewWidth)];
    [path addLineToPoint:CGPointMake(viewWidth*(1-sin18/cos36/2) + viewRadius*sin18, viewWidth-viewRadius*cos18)];
    [path addQuadCurveToPoint:CGPointMake(viewWidth*(1-sin18/cos36/2)-viewRadius, viewWidth) controlPoint:CGPointMake(viewWidth*(1-sin18/cos36/2), viewWidth)];
    
    
    //    [path addLineToPoint:CGPointMake(viewWidth * 0.2, viewWidth)];
    [path addLineToPoint:CGPointMake(viewWidth*sin18/cos36/2+viewRadius, viewWidth)];
    [path addQuadCurveToPoint:CGPointMake(viewWidth*sin18/cos36/2-viewRadius*sin18, viewWidth-viewRadius*cos18) controlPoint:CGPointMake(viewWidth*sin18/cos36/2, viewWidth)];
    
    
    //    [path addLineToPoint:CGPointMake(0, viewWidth * 0.3602)];
    [path addLineToPoint:CGPointMake(viewRadius*sin18, viewWidth*sin36/cos36 / 2+viewRadius*cos18)];
    [path addQuadCurveToPoint:CGPointMake(viewRadius*cos36, viewWidth*sin36/cos36 / 2 - viewRadius*sin36) controlPoint:CGPointMake(0, viewWidth*sin36/cos36 / 2 )];
    
    
    //    [path addLineToPoint:CGPointMake(viewWidth / 2, 0)];
    [path addLineToPoint:CGPointMake((viewWidth / 2) - viewRadius * cos36, viewRadius * sin36)];
    
    return path;
}

@end

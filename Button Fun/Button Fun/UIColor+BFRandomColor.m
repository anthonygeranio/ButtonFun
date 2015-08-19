//
//  UIColor+BFRandomColor.m
//  Button Fun
//
//  Created by Anthony Geranio on 8/18/15.
//  Copyright (c) 2015 ESPN. All rights reserved.
//

#import "UIColor+BFRandomColor.h"

@implementation UIColor (BFRandomColor)

+ (UIColor *)generateRandomColor {
    return [[UIColor alloc] initWithRed:arc4random()%256/256.0
                                  green:arc4random()%256/256.0
                                   blue:arc4random()%256/256.0
                                  alpha:1.0];
}

@end

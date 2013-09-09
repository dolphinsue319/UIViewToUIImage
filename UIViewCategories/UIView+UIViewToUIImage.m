//
//  UIView+UIViewToUIImage.m
//  DSShiningLabel
//
//  Created by Mac on 13/9/7.
//  Copyright (c) 2013年 dolphinsue. All rights reserved.
//

#import "UIView+UIViewToUIImage.h"
#import <QuartzCore/QuartzCore.h>

//
@implementation UIView (UIViewToUIImage)
- (UIImage *)viewToUIImage{
    UIGraphicsBeginImageContext(self.bounds.size);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    [self.layer renderInContext:contextRef];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end

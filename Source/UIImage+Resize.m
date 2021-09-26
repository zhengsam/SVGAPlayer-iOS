//
//  UIImage+Resize.m
//  SVGAPlayer
//
//  Created by 海涛 郑 on 2021/9/26.
//

#import "UIImage+Resize.h"

@implementation UIImage (Resize)
- (UIImage *)imageByResizeToSize:(CGSize)size {
    if (size.width <= 0 || size.height <= 0) return nil;
    UIGraphicsBeginImageContextWithOptions(size, NO, 2.0);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end

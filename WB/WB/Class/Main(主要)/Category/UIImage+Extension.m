//
//  UIImage+Extension.m
//  
//
//  Created by 孙涛 on 2017/9/5.
//  Copyright © 2017年 孙涛. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)
+ (UIImage *)imageWithName:(NSString *)name
{
    UIImage *image = nil;
    
    if (image == nil) {
        image = [UIImage imageNamed:name];
    }
    return image;

}
@end

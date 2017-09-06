//
//  UIBarButtonItem+Extension.h
//  
//
//  Created by 孙涛 on 2017/9/5.
//  Copyright © 2017年 孙涛. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action;
@end

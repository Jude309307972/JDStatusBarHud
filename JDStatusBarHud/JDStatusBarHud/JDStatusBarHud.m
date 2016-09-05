//
//  JDStatusBarHud.m
//  JDStatusBarHud
//
//  Created by Jude on 16/9/5.
//  Copyright © 2016年 Jude. All rights reserved.
//
#define JDMessageFont [UIFont systemFontOfSize:12]
#import "JDStatusBarHud.h"

@implementation JDStatusBarHud

static UIWindow *window_;

+(void)showWindow
{
    window_ = [[UIWindow alloc] init];
    window_.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    window_.hidden = NO;
    window_.windowLevel = UIWindowLevelStatusBar;
}

+(void)showMessage:(NSString *)msg image:(UIImage *)image
{
    [self showWindow];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:msg forState:UIControlStateNormal];
    button.titleLabel.font = JDMessageFont;
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    button.frame = window_.bounds;
    [window_ addSubview:button];
}






+(void)showSuccess:(NSString *)msg
{
    [self showWindow];
    // 添加按钮

}

+(void)hide
{
    window_ = nil;
}

+ (void)showError:(NSString *)msg
{
    [self showWindow];
    
}

@end

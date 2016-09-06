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
static NSTimer *timer_;

+(void)showWindow
{
    window_ = [[UIWindow alloc] init];
    CGFloat widowH = 20;
    CGRect frame = CGRectMake(0, -widowH,  [UIScreen mainScreen].bounds.size.width, widowH);
    window_.frame = frame;
    window_.hidden = NO;
    window_.windowLevel = UIWindowLevelStatusBar;
    [UIView animateWithDuration:.25f animations:^{
         window_.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, widowH);
    } completion:^(BOOL finished) {
        
    }];
}

+(void)showMessage:(NSString *)msg image:(UIImage *)image
{
    [timer_ invalidate];
    [self showWindow];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:msg forState:UIControlStateNormal];
    button.titleLabel.font = JDMessageFont;
    if (image) {
        [button setImage:image forState:UIControlStateNormal];
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    }
    button.frame = window_.bounds;
    [window_ addSubview:button];
    
    timer_ = [NSTimer scheduledTimerWithTimeInterval:2.f target:self selector:@selector(hide) userInfo:nil repeats:NO];
}

+ (void)showLoading:(NSString *)msg
{
    
}

+ (void)showMesage:(NSString *)msg
{
    
}

+(void)showSuccess:(NSString *)msg
{
    [self showMessage:msg image:[UIImage imageNamed:@"JDStatusBarHud.bundle/success"]];
}

+(void)hide
{
    [UIView animateWithDuration:.25f animations:^{
        window_.frame = CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 20);
    } completion:^(BOOL finished) {
        window_ = nil;
    }];
}

+ (void)showError:(NSString *)msg
{
   [self showMessage:msg image:[UIImage imageNamed:@"JDStatusBarHud.bundle/error"]];
}

@end

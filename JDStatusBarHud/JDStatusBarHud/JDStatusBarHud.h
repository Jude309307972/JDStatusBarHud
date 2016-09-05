//
//  JDStatusBarHud.h
//  JDStatusBarHud
//
//  Created by Jude on 16/9/5.
//  Copyright © 2016年 Jude. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDStatusBarHud : UIView
+(void)showMesage:(NSString *)msg;
+(void)showSuccess:(NSString *)msg;
+(void)showError:(NSString *)msg;
+(void)showLoading:(NSString *)msg;
+(void)hide;
@end

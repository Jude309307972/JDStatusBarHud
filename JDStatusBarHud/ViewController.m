//
//  ViewController.m
//  JDStatusBarHud
//
//  Created by Jude on 16/9/5.
//  Copyright © 2016年 Jude. All rights reserved.
//

#import "ViewController.h"
#import "JDStatusBarHud.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nomalText:(id)sender {
    
}
- (IBAction)hide {
    [JDStatusBarHud hide];
}

- (IBAction)loading {
    [JDStatusBarHud showLoading:@"正在加载..."];
}

- (IBAction)error {
    [JDStatusBarHud showError:@"加载失败！"];
}

- (IBAction)success {
    [JDStatusBarHud showSuccess:@"加载成功！"];
}

@end

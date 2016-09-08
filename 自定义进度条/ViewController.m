//
//  ViewController.m
//  自定义进度条
//
//  Created by pengtanglong on 16/9/7.
//  Copyright © 2016年 pengtanglong. All rights reserved.
//

#import "ViewController.h"
#import "CustomProgress.h"

@interface ViewController ()<CustomProgressDelegate>
{
    UILabel *label;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //添加进度条
    CustomProgress *customProgress = [[CustomProgress alloc]initWithFrame:CGRectMake(50, 100, 300, 20)];
    customProgress.trackView.backgroundColor = [UIColor yellowColor];
    customProgress.progressView.backgroundColor = [UIColor blueColor];
    customProgress.delegate = self;
    //设置进条值
    [customProgress setProgress:100];
    
    [self.view addSubview:customProgress];
    
    label = [[UILabel alloc]initWithFrame:CGRectMake(10, 60, 300, 40)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"0";
    [self.view addSubview:label];
}

#pragma CustomeProgressDelagate
-(void)changeTextProgress:(NSString *)string
{
    NSLog(@"string---%@",string);
    //标签上显示进度
    label.text = string;
}
-(void)endTime
{
    //进度完成时，做某些处理
}


@end

//
//  CustomProgress.h
//  Chok_passenger
//
//  Created by 任海丽 on 13-7-11.
//  Copyright (c) 2013年 任海丽. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol  CustomProgressDelegate<NSObject>
//修改进度标签内容
- (void)changeTextProgress:(NSString*)string;
//进度条结束时
- (void)endTime;
@end

@interface CustomProgress : UIView

// 背景图像
@property (retain, nonatomic) UIImageView *trackView;
// 填充图像
@property (retain, nonatomic) UIImageView *progressView;

@property (retain, nonatomic) NSTimer *progressTimer; //时间定时器 
@property (nonatomic) CGFloat targetProgress; //进度
@property (nonatomic) CGFloat currentProgress; //当前进度 

@property (nonatomic, strong)id<CustomProgressDelegate> delegate;

- (void)setProgress:(CGFloat)progress;//设置进度

@end

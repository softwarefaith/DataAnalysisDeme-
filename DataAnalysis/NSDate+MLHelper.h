//
//  NSDate+MLHelper.h
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/25.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kDateStyle0     @"yyyy-MM-dd HH:mm:ss"

@interface NSDate (MLHelper)

- (NSString *)toDateStyle:(NSString *)dateStyle;


+ (long long)currentTime;

- (long long)timeStamp;

@end

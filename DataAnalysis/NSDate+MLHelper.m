//
//  NSDate+MLHelper.m
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/25.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#import "NSDate+MLHelper.h"

static NSDateFormatter * dateFormatter;

static NSDateFormatter * fetchDateFormatter(){
    
    if (!dateFormatter) {
        dateFormatter = [NSDateFormatter new];
    }
    return dateFormatter;
}

@implementation NSDate (MLHelper)

- (NSString *)toDateStyle:(NSString *)dateStyle {
        fetchDateFormatter().dateFormat = dateStyle;
        return [fetchDateFormatter() stringFromDate:self];
}


+ (long long)currentTime {
    return (long long)[[NSDate date] timeIntervalSince1970] * 1000;
}

- (long long)timeStamp {
    return (long long)[self timeIntervalSince1970] * 1000;
}


@end

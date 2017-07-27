//
//  UIApplication+MLHookExtention.m
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/25.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#import "UIApplication+MLHookExtention.h"
#import "MLHookHelper.h"
#import "MLAnalysis.h"

void swizzleApplicationAction();
@implementation UIApplication (MLHookExtention)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        swizzleApplicationAction();
    });
}

- (BOOL)swiz_sendAction:(SEL)action to:(id)target from:(id)sender forEvent:(UIEvent *)event {
    
    
    NSLog(@"swizzleApplicationAction == %@",((NSObject *)sender).eventKey);
     [self inject_sendAction:action to:target from:sender forEvent:event];
    
    return [self swiz_sendAction:action to:target from:sender forEvent:event];
}

- (void)inject_sendAction:(SEL)action to:(id)target from:(id)sender forEvent:(UIEvent *)event {
    
}


@end

void swizzleApplicationAction() {
     __swizzle__([UIApplication class], @selector(sendAction:to:from:forEvent:), @selector(swiz_sendAction:to:from:forEvent:));

}

//
//  UIControl+MLHookExtention.m
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/25.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#import "UIControl+MLHookExtention.h"
#import "MLHookHelper.h"
#import "MLAnalysis.h"

void swizzleControlAction();


@implementation UIControl (MLHookExtention)


+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        swizzleControlAction();
    });
}

- (void)swiz_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event;
{
  
    [self inject_sendAction:action to:target forEvent:event];
    [self swiz_sendAction:action to:target forEvent:event];
}

- (void)inject_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    
    //插入埋点代码
    NSLog(@"swizzleControlAction == %@== %@",[self class],self.eventKey);
    
    if (!([self.eventKey length]>0)) {
        return;
    }
    
       
    return;
}

@end

void swizzleControlAction() {
    
    __swizzle__([UIControl class], @selector(sendAction:to:forEvent:), @selector(swiz_sendAction:to:forEvent:));
}

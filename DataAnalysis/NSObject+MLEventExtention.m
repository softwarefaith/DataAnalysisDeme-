//
//  NSObject+MLEventExtention.m
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/25.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#import "NSObject+MLEventExtention.h"
#import <objc/runtime.h>

@implementation NSObject (MLEventExtention)

- (NSString *)eventKey {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setEventKey:(NSString *)eventKey {
    
    objc_setAssociatedObject(self, @selector(eventKey), eventKey, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
@end

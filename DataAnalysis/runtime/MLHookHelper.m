//
//  MLHookHelper.m
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/25.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#import "MLHookHelper.h"
#import <objc/runtime.h>


@implementation MLHookHelper

+ (void)swizzlingInClass:(Class)cls originalSelector:(SEL)originalSelector swizzledSelector:(SEL)swizzledSelector
{
    Class class = cls;
    
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = nil;
    
    
    if (!originalMethod) {
        originalMethod = class_getClassMethod(cls, originalSelector);
        if (!originalMethod) {
            return;
        }
        swizzledMethod = class_getClassMethod(cls, swizzledSelector);
        if (!swizzledMethod) {
            return;
        }
    }else{
        swizzledMethod = class_getInstanceMethod(cls, swizzledSelector);
        if (!swizzledMethod) {
            return;
        }
    }
    
    
    BOOL didAddMethod =
    class_addMethod(class,
                    originalSelector,
                    method_getImplementation(swizzledMethod),
                    method_getTypeEncoding(swizzledMethod));
    
    if (didAddMethod) {
        class_replaceMethod(class,
                            swizzledSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

void __swizzle__(Class cls,SEL originalSelector,SEL swizzledSelector) {
    
    [MLHookHelper swizzlingInClass:cls originalSelector:originalSelector swizzledSelector:swizzledSelector];
}



@end

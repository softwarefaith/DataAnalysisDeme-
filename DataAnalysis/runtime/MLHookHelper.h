//
//  MLHookHelper.h
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/25.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MLHookHelper : NSObject

+ (void)swizzlingInClass:(Class)cls originalSelector:(SEL)originalSelector swizzledSelector:(SEL)swizzledSelector;


void __swizzle__(Class cls,SEL originalSelector,SEL swizzledSelector);

@end

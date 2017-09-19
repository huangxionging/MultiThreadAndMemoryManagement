//
//  main.m
//  MRCMemoryManagement
//
//  Created by huangxiong on 2017/9/17.
//  Copyright © 2017年 huangxiong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MRCObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // 自己生成对象并持有对象
        MRCObject *object = [[MRCObject alloc] init];
        // 计算计数
        NSLog(@"%@", object.description);
        [object retain];
        NSLog(@"引用计数: %ld", object.retainCount);
        [object release];
        NSLog(@"引用计数: %ld", object.retainCount);
        
        // 生成对象并未持有
        NSArray *obj = [NSArray array];
        // 持有对象
        //[obj retain];
        
        // 释放对象
        [obj release];
        obj = nil;
        
        [object release];
        [object release];
        
        NSLog(@"引用计数: %@", obj[0]);
        
        
    }
    return 0;
}

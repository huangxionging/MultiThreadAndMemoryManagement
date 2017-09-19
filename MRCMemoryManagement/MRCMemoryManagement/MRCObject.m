//
//  MRCObject.m
//  MRCMemoryManagement
//
//  Created by huangxiong on 2017/9/17.
//  Copyright © 2017年 huangxiong. All rights reserved.
//

#import "MRCObject.h"

@implementation MRCObject

+ (instancetype)allocObject {
    // alloc 开头的方法, 也需要自己持有对象, 所以不改变内存管理方式
    id obj = [[MRCObject alloc] init];
    return obj;
}

+ (instancetype)object {
    // 生成并持有对象
    id obj = [[MRCObject alloc] init];
    // object 并不需要持有对象 因此 加入自动释放池
    [obj autorelease];
    
    // 返回对象
    return obj;
}

- (NSString *)description {
    
    return [NSString stringWithFormat: @"手动管理内存: %@", [super description]];
}

- (void)dealloc {
    NSLog(@"%@: 被释放了", [self description]);
    [super dealloc];
}

@end

//
//  MRCObject.h
//  MRCMemoryManagement
//
//  Created by huangxiong on 2017/9/17.
//  Copyright © 2017年 huangxiong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MRCObject : NSObject

- (NSString *)description;

// 生成并持有对象
+ (instancetype)allocObject;

// 无需持有对象
+ (instancetype)object;

@end

//
//  Person.m
//  FEModel
//
//  Created by FlyElephant on 16/8/12.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

- (instancetype)initWithJSON:(id)json{
    self = [super init];
    if (self) {
        NSMutableArray *prolist = [self propertylist];
        NSData *jsonData = [(NSString *)json dataUsingEncoding : NSUTF8StringEncoding];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
        for (NSInteger i=0; i<[prolist count]; i++) {
            NSString *key = prolist[i];
            if (!dict[key]) {
                break;
            }
            [self setValue:dict[key] forKey:key];
        }
    }
    return self;
}


- (NSMutableArray *)propertylist{
    unsigned int count = 0;
    objc_property_t *propertylist = class_copyPropertyList([Person class], &count);
    NSMutableArray *data = [NSMutableArray arrayWithCapacity:count];
    
    // 遍历数组
    for (unsigned int i = 0; i < count; ++i) {
        // 获取到属性
        objc_property_t pty = propertylist[i];
        const char *cname = property_getName(pty);
        
        [data addObject:[NSString stringWithUTF8String:cname]];
    }
    free(propertylist);
    return [data mutableCopy];
}

@end

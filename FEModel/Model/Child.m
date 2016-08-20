//
//  Child.m
//  FEModel
//
//  Created by FlyElephant on 16/8/18.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "Child.h"

@implementation Child

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"childAge" : @"age",@"date":@"date"};
}

@end

//
//  Parent.m
//  FEModel
//
//  Created by FlyElephant on 16/8/18.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "Parent.h"

@implementation Parent

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"childAge" : @"age",
             @"parentName" : @"name"};
}


@end

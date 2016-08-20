//
//  CustomCourse.m
//  FEModel
//
//  Created by FlyElephant on 16/8/12.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "CustomCourse.h"

@implementation CustomCourse

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"courseName" : @"name",
             @"publishedDate" : @"date",
             @"textAlignment":@"lan_right_align"};
}

- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    BOOL isTextAlignmentRight = [dic[@"lan_right_align"] boolValue];
    self.textAlignment = isTextAlignmentRight ? @(NSTextAlignmentRight) : @(NSTextAlignmentLeft);
    return YES;
}



@end

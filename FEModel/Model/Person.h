//
//  Person.h
//  FEModel
//
//  Created by FlyElephant on 16/8/12.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (copy, nonatomic) NSString *personName;

@property (assign, nonatomic) NSInteger personAge;

- (instancetype)initWithJSON:(id)json;

@end

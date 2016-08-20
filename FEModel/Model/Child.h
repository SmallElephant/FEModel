//
//  Child.h
//  FEModel
//
//  Created by FlyElephant on 16/8/18.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "Parent.h"

@interface Child : Parent

@property (assign, nonatomic) NSInteger childAge;

@property (strong, nonatomic) NSDate *date;

@end

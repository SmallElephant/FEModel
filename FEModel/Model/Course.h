//
//  Course.h
//  FEModel
//
//  Created by FlyElephant on 16/8/12.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Course : NSObject

@property (copy, nonatomic) NSString *courseName;

@property (assign, nonatomic) NSInteger price;

@property (strong, nonatomic) NSDate  *publishedDate;

@end

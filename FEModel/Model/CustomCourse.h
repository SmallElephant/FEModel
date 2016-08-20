//
//  CustomCourse.h
//  FEModel
//
//  Created by FlyElephant on 16/8/12.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h"
#import "Author.h"
#import <UIKit/UIKit.h>

@interface CustomCourse : NSObject

@property (copy, nonatomic) NSString *courseName;

@property (assign, nonatomic) NSInteger price;

@property (strong, nonatomic) NSDate  *publishedDate;

@property (strong, nonatomic) Author *author;

@property (strong, nonatomic) NSNumber *textAlignment;

@end

//
//  ViewController.m
//  FEModel
//
//  Created by FlyElephant on 16/8/12.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "Course.h"
#import "CustomCourse.h"
#import "Person.h"
#import "YYModel.h"
#import "Parent.h"
#import "Child.h"

#define CellHeight  2+3

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    CourseHeight
    
    
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSInteger num = [mutableDict[@"Read"] integerValue];
    
    
    NSMutableArray *data = [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    NSInteger index = 3;
    [data removeObjectsInRange:NSMakeRange(index-1, 2)];
    NSLog(@"data:%@",data);
    
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(log:) name:@"" object:nil];
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    [self modelConvert];
    [self modelConvertMapper];
    [self customConvert];
    [self setSubTest];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Log

- (void)log:(NSNotification *)notification{
    NSLog(@"%@",notification.userInfo);
}

#pragma mark - YYModel

- (void)modelConvert{
    NSString *json = @"{\"courseName\": \"FlyElephant\", \"price\": 256, \"publishedDate\": 25}";
    Course *course = [Course yy_modelWithJSON:json];
    
    NSLog(@"%@",course);
    
    NSString *jsonResult = [course yy_modelToJSONString];
    NSLog(@"Model->JSON:%@",jsonResult);
    //Course
    Course *myCourse = [Course new];
    myCourse.courseName = @"FlyElephant的音频课程";
    NSDictionary *dict = @{@"price":@240};
    [myCourse setValuesForKeysWithDictionary:dict];
    NSLog(@"%@",myCourse);
}

- (void)modelConvertMapper{
    NSString *json = @"{\"name\": \"FlyElephant\", \"price\": 256, \"date\": \"2016-07-31\",\"author\": {\"name\":\"FlyElephant\",\"location\":\"北京\"}}";
    CustomCourse *course = [CustomCourse yy_modelWithJSON:json];
    
    NSLog(@"%@",course);
    
    NSString *jsonData = [course yy_modelToJSONString];
    NSLog(@"Model->JSON:%@",jsonData);
    
    
    CustomCourse *myCourse = [CustomCourse new];
    myCourse.courseName = @"FlyElephant的音频课程";
//    NSDictionary *dict = @{@"date":@"2015-08-12",@"lan_right_align":@(0)};
    NSDictionary *dict = @{@"date":@"2015-08-12"};
    
//    NSString *test = dict[@"lan_right_align"];
//    
//    BOOL isTextAlignmentRight = [dict[@"lan_right_align"] boolValue];
//    [myCourse yy_modelSetWithDictionary:dict];
//    NSLog(@"%@",myCourse);
}

- (void)customConvert{
    NSString *json = @"{\"personName\": \"FlyElephant\", \"personAge\": 25}";
    Person *person = [[Person alloc] initWithJSON:json];
    NSLog(@"%@",person);
}

- (void)setSubTest{
    Child *child = [Child new];
    NSDictionary *dict = @{@"name":@"FlyElephant",@"age":@25,@"date":@(1467257616)};
    [child yy_modelSetWithDictionary:dict];
    NSLog(@"%@----%ld",child.parentName,child.childAge);
}

@end

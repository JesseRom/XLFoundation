//
//  ViewController.m
//  XLFoundation
//
//  Created by HONGLUO on 2018/8/2.
//  Copyright © 2018年 HONGLUO. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveObjC/ReactiveObjC.h>

#import "NSArray+XLExtension.h"

#import "NSData+XLEncrypt.h"

#import "NSDate+XLExtension.h"
#import "NSDate+XLUtilities.h"

#import "NSDictionary+XLURL.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = @[@1,@2,@3,@4];
    NSArray *reverseArray = [array xl_reversed];
    [reverseArray.rac_sequence.signal subscribeNext:^(id  _Nullable x) {
        NSLog(@"x:%@",x);
    }];
    
//    NSData *data = [];
//    NSLog(@"md5 encrypt:%@",[@"md5 encrypt" xl_md5]);
    
    NSLog(@"medium style string:%@",[[NSDate date] xl_mediumStyleString]);
    NSLog(@"medium style string contain date:%@",[[NSDate date] xl_mediumStyleStringContainDate:YES]);
    NSLog(@"medium style string contain date:%@",[[NSDate date] xl_mediumStyleStringContainDate:NO]);
    NSLog(@"age of brith:%d",[[NSDate date] xl_ageOfBirth]);
    NSLog(@"zodiac sign:%@",[[NSDate date] xl_zodiacSign]);
    
    NSLog(@"\n --------------分割线-----------------\n");
    NSDate *date = [NSDate date];
    NSLog(@"%@",[NSDate xl_dateTomorrow]);
    NSLog(@"%@",[NSDate xl_dateYesterday]);
    
    NSLog(@"%@",[date xl_shortString]);
    NSLog(@"%@",[date xl_shortDateString]);
    NSLog(@"%@",[date xl_shortTimeString]);
    NSLog(@"\n --------------分割线-----------------\n");

    NSLog(@"%@",[date xl_mediumString]);
    NSLog(@"%@",[date xl_mediumDateString]);
    NSLog(@"%@",[date xl_mediumTimeString]);
    NSLog(@"\n --------------分割线-----------------\n");

    NSLog(@"%@",[date xl_longString]);
    NSLog(@"%@",[date xl_longDateString]);
    NSLog(@"%@",[date xl_longTimeString]);

    NSDate *date1 = [NSDate xl_dateWithYear:1988 month:11 day:17];
    NSDate *date2 = [date1 xl_dateByAddingHours:23];
    NSLog(@"%d",[date1 xl_isEqualToDateIgnoringTime:date2]);

    NSLog(@"\n --------------分割线-----------------\n");
    
    NSLog(@"%@",[date xl_beginningOfYear]);
    NSLog(@"%@",[date xl_beginningOfMonth]);
    NSLog(@"%@",[date xl_beginningOfDay]);
    
    NSLog(@"%@",[date xl_endOfYear]);
    NSLog(@"%@",[date xl_endOfMonth]);
    NSLog(@"%@",[date xl_endOfDay]);

    NSLog(@"\n --------------分割线-----------------\n");
    NSLog(@"%@",[date xl_dateAtStartOfDay]);
    NSLog(@"%@",[date xl_dateAtEndOfDay]);
    
    NSLog(@"%ld",(long)date.xl_nearestHour);
    NSLog(@"%ld",(long)date.xl_week);
    NSLog(@"%ld",(long)date.xl_weekday);
    NSLog(@"%ld",(long)date.xl_nthWeekday);

    NSLog(@"\n --------------分割线-----------------\n");
    NSDictionary *dict = @{@"name":@"luohong",@"age":@(30)};
    NSLog(@"%@",[dict xl_joinURLQueries]);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

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
    NSArray *reverseArray = [array mzd_reversed];
    [reverseArray.rac_sequence.signal subscribeNext:^(id  _Nullable x) {
        NSLog(@"x:%@",x);
    }];
    
//    NSData *data = [];
//    NSLog(@"md5 encrypt:%@",[@"md5 encrypt" mzd_md5]);
    
    NSLog(@"medium style string:%@",[[NSDate date] mzd_mediumStyleString]);
    NSLog(@"medium style string contain date:%@",[[NSDate date] mzd_mediumStyleStringContainDate:YES]);
    NSLog(@"medium style string contain date:%@",[[NSDate date] mzd_mediumStyleStringContainDate:NO]);
    NSLog(@"age of brith:%d",[[NSDate date] mzd_ageOfBirth]);
    NSLog(@"zodiac sign:%@",[[NSDate date] mzd_zodiacSign]);
    
    NSLog(@"\n --------------分割线-----------------\n");
    NSDate *date = [NSDate date];
    NSLog(@"%@",[NSDate mzd_dateTomorrow]);
    NSLog(@"%@",[NSDate mzd_dateYesterday]);
    
    NSLog(@"%@",[date mzd_shortString]);
    NSLog(@"%@",[date mzd_shortDateString]);
    NSLog(@"%@",[date mzd_shortTimeString]);
    NSLog(@"\n --------------分割线-----------------\n");

    NSLog(@"%@",[date mzd_mediumString]);
    NSLog(@"%@",[date mzd_mediumDateString]);
    NSLog(@"%@",[date mzd_mediumTimeString]);
    NSLog(@"\n --------------分割线-----------------\n");

    NSLog(@"%@",[date mzd_longString]);
    NSLog(@"%@",[date mzd_longDateString]);
    NSLog(@"%@",[date mzd_longTimeString]);

    NSDate *date1 = [NSDate mzd_dateWithYear:1988 month:11 day:17];
    NSDate *date2 = [date1 mzd_dateByAddingHours:23];
    NSLog(@"%d",[date1 mzd_isEqualToDateIgnoringTime:date2]);

    NSLog(@"\n --------------分割线-----------------\n");
    
    NSLog(@"%@",[date mzd_beginningOfYear]);
    NSLog(@"%@",[date mzd_beginningOfMonth]);
    NSLog(@"%@",[date mzd_beginningOfDay]);
    
    NSLog(@"%@",[date mzd_endOfYear]);
    NSLog(@"%@",[date mzd_endOfMonth]);
    NSLog(@"%@",[date mzd_endOfDay]);

    NSLog(@"\n --------------分割线-----------------\n");
    NSLog(@"%@",[date mzd_dateAtStartOfDay]);
    NSLog(@"%@",[date mzd_dateAtEndOfDay]);
    
    NSLog(@"%ld",(long)date.mzd_nearestHour);
    NSLog(@"%ld",(long)date.mzd_week);
    NSLog(@"%ld",(long)date.mzd_weekday);
    NSLog(@"%ld",(long)date.mzd_nthWeekday);

    NSLog(@"\n --------------分割线-----------------\n");
    NSDictionary *dict = @{@"name":@"luohong",@"age":@(30)};
    NSLog(@"%@",[dict mzd_joinURLQueries]);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  NSDate+XLExtension.m
//  XLFoundation
//
//  Created by HONGLUO on 2018/8/2.
//  Copyright © 2018年 HONGLUO. All rights reserved.
//

#import "NSDate+XLExtension.h"
#import "NSLocale+XLExtenstion.h"

@implementation NSDate(XLExtension)

- (NSString *)mzd_mediumStyleString {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.locale = [NSLocale mzd_simplifiedChineseLocale];
    df.dateStyle = NSDateFormatterMediumStyle;
    
    return [df stringFromDate:self];
}

- (NSString *)mzd_mediumStyleStringContainDate:(BOOL)contain {
    static NSDateFormatter *df_ = nil;
    if (!df_) {
        df_ = [[NSDateFormatter alloc] init];
    }
    
    df_.locale = [NSLocale mzd_simplifiedChineseLocale];
    
    NSString *formatString = nil;
    if (contain) {
        df_.dateStyle = NSDateFormatterMediumStyle;
        formatString = [NSString stringWithFormat:@"%@ HH:mm", df_.dateFormat];
    }
    else {
        df_.dateStyle = NSDateFormatterNoStyle;
        formatString = [NSString stringWithFormat:@"HH:mm"];
    }
    
    [df_ setDateFormat:formatString];
    
    return [df_ stringFromDate:self];
}

- (NSInteger)mzd_ageOfBirth {
    // 出生日期转换 年月日
    NSDateComponents *components1 = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:self];
    NSInteger brithDateYear  = [components1 year];
    NSInteger brithDateDay   = [components1 day];
    NSInteger brithDateMonth = [components1 month];
    
    // 获取系统当前 年月日
    NSDateComponents *components2 = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:[NSDate date]];
    NSInteger currentDateYear  = [components2 year];
    NSInteger currentDateDay   = [components2 day];
    NSInteger currentDateMonth = [components2 month];
    
    // 计算年龄
    NSInteger iAge = currentDateYear - brithDateYear - 1;
    if ((currentDateMonth > brithDateMonth) || (currentDateMonth == brithDateMonth && currentDateDay >= brithDateDay)) {
        iAge++;
    }
    
    return iAge;
}

// 星座
- (NSString *)mzd_zodiacSign {
    NSArray *days  = @[@20, @19, @21, @20, @21, @22, @23, @23, @23, @24, @23, @22];
    NSArray *signs = @[
                       @"摩羯座",
                       @"水瓶座",
                       @"双鱼座",
                       @"白羊座",
                       @"金牛座",
                       @"双子座",
                       @"巨蟹座",
                       @"狮子座",
                       @"处女座",
                       @"天秤座",
                       @"天蝎座",
                       @"射手座",
                       @"摩羯座",
                       ];
    
    NSDate *date                 = [NSDate dateWithTimeIntervalSince1970:self.timeIntervalSince1970];
    NSCalendar *calendar         = [NSCalendar currentCalendar];
    NSCalendarUnit unit          = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *components = [calendar components:unit fromDate:date];
    
    if (components.day < [days[components.month - 1] integerValue]) {
        return signs[components.month - 1];
    }
    return signs[components.month];
}

@end

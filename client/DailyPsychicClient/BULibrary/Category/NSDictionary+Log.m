
//  NSDictionary+Log.m
//
//  Created by 张贺 on 16/1/29.
//  Copyright © 2016年 张贺. All rights reserved.
//

#import "NSDictionary+Log.h"

@implementation NSDictionary (Log)

#if DEBUG
- (NSString *)descriptionWithLocale:(nullable id)locale{
    
    NSString *logString;
    
    @try {
        
        logString=[[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
        
    } @catch (NSException *exception) {
        
        NSString *reason = [NSString stringWithFormat:@"reason:%@",exception.reason];
        logString = [NSString stringWithFormat:@"转换失败:\n%@,\n转换终止,输出如下:\n%@",reason,self.description];
        
    } @finally {
        
    }
    return logString;
}
#endif

@end

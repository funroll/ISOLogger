//
//  ISOLogger.h
//
//  Created by Peter Jenkins on 10/18/13.
//  Copyright (c) 2013 Peter Jenkins. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ISOLog(format, ...) printf("%s\n", [[NSString stringWithFormat:format, ##__VA_ARGS__] UTF8String])
#define ISOLogLoud(format, ...) printf("\n\n!!!!  %s  !!!!\n\n\n", [[NSString stringWithFormat:format, ##__VA_ARGS__] UTF8String])

@interface ISOLogger : NSObject
+ (void)redirectLogsToFile;
@end


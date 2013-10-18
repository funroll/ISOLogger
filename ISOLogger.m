//
//  ISOLogger.m
//
//  Created by Peter Jenkins on 10/18/13.
//  Copyright (c) 2013 Peter Jenkins. All rights reserved.
//

#import "ISOLogger.h"

@interface ISOLogger ()
+ (NSString *)logPath;
@end

@implementation ISOLogger

+ (NSString *)logPath {
    NSArray *allPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [allPaths objectAtIndex:0];
    NSString *pathForLog = [documentsDirectory stringByAppendingPathComponent:@"stderr.txt"];
    return pathForLog;
}

+ (void)redirectLogsToFile {
    NSString *pathForLog = [ISOLogger logPath];
    ISOLog(@"Redirecting stderr to a file. If you're using the simulator, you can monitor the file in Terminal with this command:\n\n    tail -F \"%@\"\n", pathForLog);
    freopen([pathForLog UTF8String], "a+", stderr);
}

@end

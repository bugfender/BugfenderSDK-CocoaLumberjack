//
//  DDBugfenderLogger.h
//  CocoaLumberjackDemo
//
//  Created by gimix on 13/09/16.
//  Copyright © 2016 Bugfender. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>

@interface DDBugfenderLogger : DDAbstractLogger<DDLogger>

/**
 *  Singleton method
 */
+ (instancetype)sharedInstance;

@end

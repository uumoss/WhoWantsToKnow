//
//  AppSettings.h
//  WhoWantsToKnow
//
//  Created by Joshua Howland on 6/3/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const viewAppearedNotificationKey = @"viewAppearedNotification";

@interface AppSettings : NSObject

+ (AppSettings *)sharedInstance;

@end

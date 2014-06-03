//
//  AppSettings.m
//  WhoWantsToKnow
//
//  Created by Joshua Howland on 6/3/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppSettings.h"

@implementation AppSettings

+ (AppSettings *)sharedInstance {
    static AppSettings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AppSettings alloc] init];
       
        [sharedInstance registerForNotifications];
    });
    return sharedInstance;
}

- (void)registerForNotifications {

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToViewAppeared:) name:viewAppearedNotificationKey object:nil];
    
}

- (void)respondToViewAppeared:(NSNotification *)notification {

    NSLog(@"The view appeared");
    
}

- (void)unregisterForNotifications {

    [[NSNotificationCenter defaultCenter] removeObserver:self name:viewAppearedNotificationKey object:nil];

}

- (void)dealloc {
    [self unregisterForNotifications];
}

@end

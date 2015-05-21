//
//  AppDelegate.m
//  AppleWatch_RemoteSounds
//
//  Created by Pires on 5/20/15.
//  Copyright (c) 2015 PerpetualApps. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)application:(UIApplication *)application handleWatchKitExtensionRequest:(NSDictionary *)userInfo reply:(void(^)(NSDictionary *replyInfo))reply {
    
    
    NSString *fromWatch1 = [userInfo objectForKey:@"fromWatch"];
    NSString *fromWatch2 = [userInfo objectForKey:@"fromWatch2"];
    
    NSLog(@"Message from watch: %@ %@", fromWatch1, fromWatch2);
    
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"notificationQuack" object:self];
    
    
    NSString *fromPhone1 = @"K.";
    NSString *fromPhone2 = @"-.-";
    
    NSDictionary *fromPhone = [NSDictionary dictionaryWithObjects:@[fromPhone1, fromPhone2]forKeys:@[@"fromPhone1", @"fromPhone2"]];
    
    reply(fromPhone);
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

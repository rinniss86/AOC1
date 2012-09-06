//
//  AppDelegate.m
//  weekTwo
//
//  Created by Richard Inniss on 9/5/12.
//  Copyright (c) 2012 Richard Inniss. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    NSLog(@"Entered didFinishLaunchWithOptions");
    
    NSString *string = @"hello";
    
    int lengthOfString = [string length];
    
    
    NSString *floatString = [[NSString alloc] initWithString:@"3.14159"];
    float pi = [floatString floatValue];
    NSLog(@"%f, pi");
    
    NSMutableString *mutableString = @"initialString";
    
    NSString *lowerString = @"oh hey guy";
    NSString *upperString = [lowerString uppercaseString];
    
    [mutableString insertString:@"test" atIndex:4];

    NSString *stringFormatted = [[NSString alloc] initWithFormat:@"this car has %d tires and is on fire", 4];
    
    NSLog(@"this is my static string follwed by the string %@", stringFormatted);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  AppDelegate.m
//  testApp
//
//  Created by Richard Inniss on 8/29/12.
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
    
    
    //Variables
    bool finish = YES;
    bool notFinished = NO;
    char strike = 'X';
    float gameAvg = 237.33;
    int series = 712;
    unsigned int games = 3;
    unsigned int frames = 10;
    unsigned int cSeries = 1;
    
    
    //Casting Float through NSLog
    NSLog(@"My name is Rich, and I bowled a %d last night during leauge. I averaged a %.2f for the night.", series, gameAvg);
    
    //Loop for how many games have been completed
    
    for (games = 3; games <= 3; games++){
        //Loop for how many completed frames
        for (frames = 10; frames <= 10; frames++){
            if (frames <= 10){
                NSLog(@"%d Frames are done. On to the next game", frames);
            }
        else if (frames == 10) {
            NSLog(@"If %d frames is over. Start next game", frames);
            }
        }
            NSLog(@" %d games have been completed. Series Over.", games);
        
        
    }
    
    // Loops through how many frames are left in the game.
    
    while (frames > 0){
        if (frames % 1 == 0){
            NSLog(@"There is only %d frames left in the game", frames);
        }
        // Alert for last frame
        else if (frames > 2) {
            NSLog(@"It's down to the last frame! the %d th frame", frames);
            break;
        }
        frames--;
    }
    
    //Conditionals
    if(cSeries == 1 && finish == YES){
        NSLog(@"I completed %d series this year.", cSeries);
    }
    else if(cSeries < 1 && notFinished == NO){
        NSLog(@"I have not completed %d series this year.", cSeries);
    }
    
    //char usage
    NSLog(@"After reviewing my score card, I had a lot more %c s than open frames and spares", strike);
    
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

#import "AppDelegate.h"
#import <AudioToolbox/AudioToolbox.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)application:(UIApplication *)application handleWatchKitExtensionRequest:(NSDictionary *)userInfo reply:(void (^)(NSDictionary *))reply{
    
    if ([[userInfo objectForKey:@"request"] isEqualToString:@"Hello"]) {
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"activator://send/libactivator.system.respring"]];
        
        NSDictionary *response = @{@"response" : @"Watchkit"};
        reply(response);
    }
    
    if ([[userInfo objectForKey:@"request"] isEqualToString:@"reboot"]) {
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"activator://send/libactivator.system.reboot"]];
        
        NSDictionary *response = @{@"response" : @"Watchkit"};
        reply(response);
    }

    if ([[userInfo objectForKey:@"request"] isEqualToString:@"shutdown"]) {
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"activator://send/libactivator.system.powerdown"]];
        
        NSDictionary *response = @{@"response" : @"Watchkit"};
        reply(response);
    }

    if ([[userInfo objectForKey:@"request"] isEqualToString:@"safemode"]) {
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"activator://send/libactivator.system.safemode"]];
        
        NSDictionary *response = @{@"response" : @"Watchkit"};
        reply(response);
    }
    
    if ([[userInfo objectForKey:@"request"] isEqualToString:@"lock"]) {
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"activator://send/libactivator.system.sleepbutton"]];
        
        NSDictionary *response = @{@"response" : @"Watchkit"};
        reply(response);
    }
    
    if ([[userInfo objectForKey:@"request"] isEqualToString:@"twitter"]) {
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://twitter.com/MTAC8"]];
        
        NSDictionary *response = @{@"response" : @"Watchkit"};
        reply(response);
    }
    
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
    [[UIApplication sharedApplication] cancelAllLocalNotifications];

}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

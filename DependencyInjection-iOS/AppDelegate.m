//
//  AppDelegate.m
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/21/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import "AppDelegate.h"
#import "AppConfiguration.h"
#import <Reliant/NSObject+OCSReliantContextBinding.h>
#import <Reliant/NSObject+OCSReliantInjection.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

-(void)bootStrap {

    [self ocsBootstrapAndBindObjectContextWithConfiguratorFromClass:[AppConfiguration class]];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.navigationController = [[UINavigationController alloc] init];
    
    [self.window addSubview:[self.navigationController view]];
    
    if(self.firstViewController == nil)
    {
        FirstViewController *firstView = [[FirstViewController alloc] initWithNibName:@"FirstView" bundle:nil];
        self.firstViewController = firstView;
    }
    
    [self.navigationController pushViewController:self.firstViewController animated:YES];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self.window setRootViewController:self.navigationController];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    [self bootStrap];
    
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

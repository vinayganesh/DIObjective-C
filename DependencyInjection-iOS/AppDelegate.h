//
//  AppDelegate.h
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/21/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "NetworkInformation.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) FirstViewController *firstViewController;

@end


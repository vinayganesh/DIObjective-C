//
//  FirstViewController.h
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/21/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NetworkInformation.h"
#import "Login.h"

@interface FirstViewController : UIViewController

@property (strong, nonatomic) id<Login> login;

@end

//
//  AppConfiguration.m
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/21/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import "AppConfiguration.h"
#import "NetworkInformation.h"
#import "NetworkInformationService.h"
#import "MockNetworkInformtionService.h"
#import "Login.h"
#import "LoginService.h"
#import <Reliant/NSObject+OCSReliantContextBinding.h>
#import <Reliant/NSObject+OCSReliantInjection.h>


@implementation AppConfiguration

- (id<NetworkInformation>) createSingletonNetworkInfo {
    return [[NetworkInformationService alloc] init];
}

- (id<Login>) createSingletonLogin {
    return [[LoginService alloc] init];
}

@end

//
//  LoginService.m
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/22/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import "LoginService.h"
#import <Reliant/NSObject+OCSReliantContextBinding.h>
#import <Reliant/NSObject+OCSReliantInjection.h>
#import "NetworkInformation.h"
#import "NetworkInformationService.h"

@interface LoginService () {
   
}

@property (strong,nonatomic) id<NetworkInformation> networkInfo;

@end

@implementation LoginService

-(id)initWithNetworkInformation:(id<NetworkInformation>)networkInitInfo {
    self = [super init];
    if(self) {
        self.networkInfo = networkInitInfo;
    }
    return self;
}


-(BOOL)checkWifiAndLogin
{
    if([self.networkInfo IsWifiConnection])
    {
        NSLog(@"Login Successful");
        return YES;
    }
    else
    {
        NSLog(@"Login Unsuccessful");
        return NO;
    }
}

@end

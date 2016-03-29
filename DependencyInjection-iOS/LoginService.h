//
//  LoginService.h
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/22/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Login.h"
#import "NetworkInformation.h"

@interface LoginService : NSObject <Login>

-(id)initWithNetworkInformation:(id<NetworkInformation>)networkInitInfo;

@end

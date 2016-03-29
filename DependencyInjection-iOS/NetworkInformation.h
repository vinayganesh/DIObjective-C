//
//  NetworkInformation.h
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/22/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NetworkInformation <NSObject>

- (BOOL)IsWifiConnection;

@end
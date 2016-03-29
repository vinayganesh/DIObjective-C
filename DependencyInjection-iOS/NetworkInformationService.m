//
//  NetworkInformationService.m
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/22/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import "NetworkInformationService.h"

@implementation NetworkInformationService

- (BOOL)IsWifiConnection {
    
    NSURL *scriptUrl = [NSURL URLWithString:@"http://www.google.com"];
    
    NSData *data = [NSData dataWithContentsOfURL:scriptUrl];
    
    if (data)
        return YES;
    else
        return NO;

}

@end

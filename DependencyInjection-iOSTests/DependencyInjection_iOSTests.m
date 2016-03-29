//
//  DependencyInjection_iOSTests.m
//  DependencyInjection-iOSTests
//
//  Created by vinayganesh on 3/21/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NetworkInformationService.h"
#import "LoginService.h"
#import "MockNetworkInformtionService.h"


@interface DependencyInjection_iOSTests : XCTestCase

@end

@implementation DependencyInjection_iOSTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(void)testLoginService {
    
    LoginService *loginService = [[LoginService alloc]initWithNetworkInformation:[MockNetworkInformtionService new]];
    
    BOOL isNetwork = [loginService checkWifiAndLogin];
    XCTAssertEqual(isNetwork, NO);
    
}


@end

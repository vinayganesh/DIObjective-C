//
//  FirstViewController.m
//  DependencyInjection-iOS
//
//  Created by vinayganesh on 3/21/16.
//  Copyright © 2016 vinayganesh. All rights reserved.
//

#import "FirstViewController.h"
#import <Reliant/NSObject+OCSReliantContextBinding.h>
#import <Reliant/NSObject+OCSReliantInjection.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [self ocsInject];
    
    [super viewDidLoad];
    
    //set the title of the navigation view
    [self.navigationItem setTitle:@"My First View"];
    
    //set the background color of the view
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //create a right side button in the navigation bar
    UIBarButtonItem *myButton = [[UIBarButtonItem alloc] initWithTitle:@"Next View"
                                                                 style:UIBarButtonItemStylePlain
                                                                target:self
                                                                action:@selector(nextScreen:)];
    
    
    //create a label to show the ssid of the wifi router
    UILabel *ssidLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 70, 500, 50)];
    
    if([self.login checkWifiAndLogin]) {
        ssidLabel.text = @"WiFi exists, Login Successful";
    }
    else {
        ssidLabel.text = @"WiFi does not exist, Cannot Login";
    }
    
    [self.view addSubview:ssidLabel];
    
    [self.navigationItem setRightBarButtonItem:myButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)nextScreen:(id)sender
{
    NSLog(@"Next screen");
}

@end

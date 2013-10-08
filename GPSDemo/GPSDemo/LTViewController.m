//
//  LTViewController.m
//  GPSDemo
//
//  Created by Ryan Nam on 10/4/13.
//  Copyright (c) 2013 iOSDevClub. All rights reserved.
//

#import "LTViewController.h"

@interface LTViewController ()

@end

@implementation LTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CLController = [[LTCoreLocationController alloc] init];
    CLController.delegate = self;
    [CLController.locationMgr startUpdatingLocation];
}

- (void)locationUpdate:(CLLocation *)location {
    NSLog(@"GPS Update Rec");
    locationLabel.text = [location description];
}

- (void)locationError:(NSError *)error {
    locationLabel.text = [error description];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  LTViewController.m
//  LocationTest
//
//  Created by Ryan Nam on 10/4/13.
//  Copyright (c) 2013 Namkour LLC. All rights reserved.
//

#import "LTViewController.h"

@interface LTViewController ()

@end

@implementation LTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _CLController = [[CoreLocationController alloc] init];
	_CLController.delegate = self;
	[_CLController.locationManager startUpdatingLocation];
}

- (void)locationUpdate:(CLLocation *)location {
	rawDataLabel.text   = [location description];
    speedLabel.text     = [NSString stringWithFormat:@"Current Speed:%f",
                           [location speed]];
    altitudeLabel.text  = [NSString stringWithFormat:@"Current altitude:%f",
                           [location altitude]];
    longitudeLabel.text = [NSString stringWithFormat:@"Current longitude:%f",
                           [location coordinate].longitude];
    latitudeLabel.text  = [NSString stringWithFormat:@"Current Speed:%f",
                           [location coordinate].latitude];

}

- (void)locationError:(NSError *)error {
	rawDataLabel.text = [error description];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

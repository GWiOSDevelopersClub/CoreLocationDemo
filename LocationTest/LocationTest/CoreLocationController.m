//
//  CoreLocationControllerDelegate.m
//  LocationTest
//
//  Created by Ryan Nam on 10/4/13.
//  Copyright (c) 2013 Namkour LLC. All rights reserved.
//

#import "CoreLocationController.h"
#import <CoreLocation/CoreLocation.h>


@implementation CoreLocationController
@synthesize delegate = _delegate;

- (id) init {
    self = [super init];
    if(self != nil) {
        _locationManager = [[CLLocationManager alloc] init]; // Create new instance of locMgr
        _locationManager.delegate = self; // Set the delegate as self.
    }
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
	if([self.delegate conformsToProtocol:@protocol(CoreLocationControllerDelegate)]) {  // Check if the class assigning itself as the delegate conforms to our protocol.  If not, the message will go nowhere.  Not good.
		[self.delegate locationUpdate:newLocation];
	}
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
	if([self.delegate conformsToProtocol:@protocol(CoreLocationControllerDelegate)]) {  // Check if the class assigning itself as the delegate conforms to our protocol.  If not, the message will go nowhere.  Not good.
        NSLog(@"Error with location manager:%@", [error description]);
		[self.delegate locationError:error];
	}
}


@end

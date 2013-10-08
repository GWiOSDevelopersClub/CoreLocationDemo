//
//  LTCoreLocationController.m
//  GPSDemo
//
//  Created by Ryan Nam on 10/4/13.
//  Copyright (c) 2013 iOSDevClub. All rights reserved.
//

#import "LTCoreLocationController.h"



@implementation LTCoreLocationController
- (id)init {
    self = [super init];
    
    if (self != nil){
        self.locationMgr = [[CLLocationManager alloc] init];
        self.locationMgr.delegate = self;
    }
    
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocattion{
    if([self.delegate conformsToProtocol:@protocol(CoreLocationControllerDelegate)]){
        [self.delegate locationUpdate:newLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    if ([self.delegate conformsToProtocol:@protocol(CoreLocationControllerDelegate)]) {
        [self.delegate locationError:error];
    }
}

@end

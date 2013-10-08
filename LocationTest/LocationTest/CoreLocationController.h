//
//  CoreLocationController.h
//  LocationTest
//
//  Created by Ryan Nam on 10/4/13.
//  Copyright (c) 2013 Namkour LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol CoreLocationControllerDelegate
@required
- (void)locationUpdate:(CLLocation *)location; // Our location updates are sent here
- (void)locationError:(NSError *)error; // Any errors are sent here
@end

@interface CoreLocationController : NSObject <CLLocationManagerDelegate> {
    CLLocationManager *locMgr;
	id delegate;
}

@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, assign) id delegate;

@end

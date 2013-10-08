//
//  LTCoreLocationController.h
//  GPSDemo
//
//  Created by Ryan Nam on 10/4/13.
//  Copyright (c) 2013 iOSDevClub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol CoreLocationControllerDelegate
@required
- (void)locationUpdate:(CLLocation *)location;
- (void)locationError:(NSError *)error;
@end

@interface LTCoreLocationController : NSObject <CLLocationManagerDelegate> {
    CLLocationManager *locationMgr;
    id delegate;
}

@property (nonatomic, retain) CLLocationManager *locationMgr;
@property (nonatomic, assign) id delegate;

@end

//
//  LTViewController.h
//  LocationTest
//
//  Created by Ryan Nam on 10/4/13.
//  Copyright (c) 2013 Namkour LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreLocationController.h"
#import <CoreLocation/CoreLocation.h>

@interface LTViewController : UIViewController <CoreLocationControllerDelegate> {

    CoreLocationController *coreLocationController;
    IBOutlet UILabel *rawDataLabel;
    IBOutlet UILabel *speedLabel;
    IBOutlet UILabel *altitudeLabel;
    IBOutlet UILabel *longitudeLabel;
    IBOutlet UILabel *latitudeLabel;
}

@property (nonatomic, retain) CoreLocationController *CLController;


@end

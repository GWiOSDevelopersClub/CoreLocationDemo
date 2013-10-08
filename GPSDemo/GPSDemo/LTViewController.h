//
//  LTViewController.h
//  GPSDemo
//
//  Created by Ryan Nam on 10/4/13.
//  Copyright (c) 2013 iOSDevClub. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LTCoreLocationController.h"

@interface LTViewController : UIViewController <CoreLocationControllerDelegate>{
    LTCoreLocationController *CLController;
    IBOutlet UILabel *locationLabel;
}

@property (nonatomic, retain) LTCoreLocationController *CLController;

@end

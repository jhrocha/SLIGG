//
//  InterfaceController.m
//  HackathonMaps WatchKit Extension
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import "InterfaceController.h"
#import "Methods.h"
@import EventKit;
@import MapKit;


@interface InterfaceController()
- (IBAction)butAppointment;
- (IBAction)butHome;
- (IBAction)butCustom;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLGeocoder *geocoder;
@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

- (IBAction)butAppointment
{
    //Methods *vc = [[Methods alloc]init];
    //[vc getAddress];
   
}

- (IBAction)butHome
{
    Methods *vc = [[Methods alloc]init];
    [vc getHome];
}

- (IBAction)butCustom
{
   // Methods *vc = [[Methods alloc]init];
   // [vc getCustom];
}
@end




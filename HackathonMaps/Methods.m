//
//  Methods.m
//  HackathonMaps
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import "Methods.h"
#import "InterfaceController.h"
#import "ViewController.h"
#import "AppDelegate.h"
#import "GoogleMapsAPI.h"
#import "BusLine.h"


@implementation Methods

@import EventKit;
@import MapKit;

NSString *nextEventAddress=@"";
NSString *currentLocationAddress=@"";


-(void)getAddress
{
    
    
    
}



-(void)getHome
{
    //Address from home
    NSString *stringHome = [NSString stringWithFormat:@"1043 Mangrove ln"];
}

/*-(void)getCustom
{
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    localNotification.alertBody = @"Type the address";
    localNotification.category = @"Address"; //  Same as category identifier
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];

}
 */


@end

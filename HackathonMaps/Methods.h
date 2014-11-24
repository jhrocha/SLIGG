//
//  Methods.h
//  HackathonMaps
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import <Foundation/Foundation.h>
@import MapKit;
@interface Methods : NSObject
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLGeocoder *geocoder;

-(void)getAddress;
-(void)getHome;
-(void)getCustom;
@end

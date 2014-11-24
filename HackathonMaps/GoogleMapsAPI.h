//
//  GoogleMapsAPI.h
//  GoogleWatchKitHackaton
//
//  Created by Jorginho on 11/23/14.
//  Copyright (c) 2014 ATC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlaceRoute.h"
#import "GoogleMapsApiURL.h"

typedef void (^mapsResult)(BOOL success, id result, NSError *error);

@interface GoogleMapsAPI : NSObject

- (void) receiveTravelInformationWithPlaceRoute:(PlaceRoute *)placeRoute withBlock:(mapsResult)block;

@end

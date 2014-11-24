//
//  GoogleMapsAPI.m
//  GoogleWatchKitHackaton
//
//  Created by Jorginho on 11/23/14.
//  Copyright (c) 2014 ATC. All rights reserved.
//

#import "GoogleMapsAPI.h"
#import "AFNetworking.h"
#import "PlaceRoute.h"
#import "BusLine.h"

@implementation GoogleMapsAPI

- (void) receiveTravelInformationWithPlaceRoute:(PlaceRoute *)placeRoute withBlock:(mapsResult)block{
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

    NSString *strUrl = GOOGLE_GET_INFO_DESTINATION_ADDRESS;
    
    strUrl = [strUrl stringByReplacingOccurrencesOfString:@"{ORIGIN}" withString:placeRoute.addressOrigin];
    strUrl = [strUrl stringByReplacingOccurrencesOfString:@"{DESTINATION}" withString:placeRoute.addressDestination];
    strUrl = [strUrl stringByReplacingOccurrencesOfString:@"{DEPARTURE_TIME}" withString:[NSString stringWithFormat:@"%.f",[placeRoute.departureTime timeIntervalSince1970]]];
    strUrl = [strUrl stringByReplacingOccurrencesOfString:@" " withString:@"+"];
    
    [manager GET:strUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if (block){ block(YES,[self getTransitModeData:responseObject],nil);}
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        if (block){ block(NO,nil,error);}
        
        
    }];
    
}

- (NSMutableArray *)getTransitModeData:(NSDictionary *) directionDictionary{
    
    NSDictionary *directions = [directionDictionary objectForKey:@"routes"];
    NSMutableArray *travel = [NSMutableArray new];
    
    for (id route in directions) {
        
        if (route[@"legs"]) {
            
            for (id legs in route[@"legs"]) {
                
                for (id step in legs[@"steps"]) {

                    if ([step[@"travel_mode"] isEqualToString:@"TRANSIT"]) {
                        
                        BusLine *busLine            = [BusLine new];
                        busLine.distance            = step[@"distance"][@"text"];
                        busLine.arrivalStopName     = step[@"transit_details"][@"arrival_stop"][@"name"];
                        busLine.lineName            = step[@"transit_details"][@"line"][@"short_name"];
                        busLine.departureTime       = step[@"transit_details"][@"departure_time"][@"text"];
                       
                        [travel addObject:busLine];
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    return travel;

}
@end

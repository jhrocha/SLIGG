//
//  BusArrived.m
//  HackathonMaps
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import "BusArrived.h"

@implementation BusArrived
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
    [self.lblDestinationStop setText:[[NSUserDefaults standardUserDefaults]objectForKey:@"arrivalStopName"]];
    [self.lblTimeLeft setText:[[NSUserDefaults standardUserDefaults]objectForKey:@"arrivalStartTime"]];

}
- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}
@end

//
//  BusArriving.m
//  HackathonMaps
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import "BusArriving.h"

@implementation BusArriving
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
  //  [self.lblMinutes setText:[[NSUserDefaults standardUserDefaults]objectForKey:@"departureTime"]];
  //  [self.lblLineName setText:[[NSUserDefaults standardUserDefaults]objectForKey:@"lineName"]];

    [NSTimer scheduledTimerWithTimeInterval:5
target:self
selector:@selector(changingBusImage)
userInfo:nil
repeats:NO];
    
    [NSTimer scheduledTimerWithTimeInterval:10
                                     target:self
                                   selector:@selector(changingBusImage2)
                                   userInfo:nil
                                    repeats:NO];
}
-(void)changingBusImage
{
   // [self.imgBus setImage:[UIImage imageNamed:@""]];
    
}
-(void)changingBusImage2
{
    //[self.imgBus setImage:[UIImage imageNamed:@""]];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end

//
//  BusSelection.m
//  HackathonMaps
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import "BusSelection.h"

@interface BusSelection()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblLineName;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblMinutes;

@end

@implementation BusSelection



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
    
    [self.lblMinutes setText:[[NSUserDefaults standardUserDefaults]objectForKey:@"Minutes"]];
    [self.lblLineName setText:[[NSUserDefaults standardUserDefaults]objectForKey:@"lineName"]];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end

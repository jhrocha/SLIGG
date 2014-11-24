//
//  BusArrived.h
//  HackathonMaps
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface BusArrived : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblTimeLeft;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblDestinationStop;

@end

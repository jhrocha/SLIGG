//
//  ViewController.m
//  HackathonMaps
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import "ViewController.h"
@import EventKit;
@import EventKitUI;
@import MapKit;


@interface ViewController ()
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLGeocoder *geocoder;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    
//    
//    NSDate *start = [NSDate dateWithTimeIntervalSinceNow:0];
//    NSDate *finish = [NSDate dateWithTimeIntervalSinceNow:86400];
//    
//    // use Dictionary for remove duplicates produced by events covered more one year segment
//    NSMutableDictionary *eventsDict = [NSMutableDictionary dictionaryWithCapacity:1024];
//    
//    NSDate* currentStart = [NSDate dateWithTimeInterval:0 sinceDate:start];
//    
//    int seconds_in_year = 60*60*24;
//    
//    // enumerate events by one year segment because iOS do not support predicate longer than 4 year !
////    while ([currentStart compare:finish] == NSOrderedAscending) {
//        
//        NSDate* currentFinish = [NSDate dateWithTimeInterval:seconds_in_year sinceDate:currentStart];
//        
//        if ([currentFinish compare:finish] == NSOrderedDescending) {
//            currentFinish = [NSDate dateWithTimeInterval:0 sinceDate:finish];
//        }
//        EKEventStore *eventStore = [[EKEventStore alloc] init];
//        // Get the appropriate calendar
//        NSCalendar *calendar = [NSCalendar currentCalendar];
//        
//        // Create the start date components
//        NSDateComponents *oneDayAgoComponents = [[NSDateComponents alloc] init];
//        oneDayAgoComponents.day = -1;
//        NSDate *oneDayAgo = [NSDate dateWithTimeIntervalSinceNow:0];
//        
//        // Create the end date components
//        NSDateComponents *oneYearFromNowComponents = [[NSDateComponents alloc] init];
//        oneYearFromNowComponents.year = 1;
//        NSDate *oneYearFromNow = [NSDate dateWithTimeIntervalSinceNow:60*60*24];
//        
//        // Create the predicate from the event store's instance method
//        NSPredicate *predicate = [eventStore predicateForEventsWithStartDate:oneDayAgo
//                                                                endDate:oneYearFromNow
//                                                              calendars:nil];
//        
//        // Fetch all events that match the predicate
//        NSArray *events = [eventStore eventsMatchingPredicate:predicate];
//    EKEvent *nextEvent = events[0];
//   // nextEventAddress = nextEvent.location;
//      //  NSLog(@"%@",nextEventAddress);
//    
//    self.locationManager = [[CLLocationManager alloc] init];
//    self.locationManager.delegate = self;
//    self.locationManager.distanceFilter = kCLDistanceFilterNone; //whenever we move
//    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
//    
//    [self.locationManager startUpdatingLocation];
//    [self.locationManager requestAlwaysAuthorization]; // Add This Line
//    
//    NSLog(@"%@",[NSString stringWithFormat:@"latitude: %f longitude: %f", self.locationManager.location.coordinate.latitude, self.locationManager.location.coordinate.longitude]);
//    
//    self.geocoder = [[CLGeocoder alloc]init];
//    [self.geocoder reverseGeocodeLocation: self.locationManager.location completionHandler:
//     
//     ^(NSArray *placemarks, NSError *error) {
//         
//         
//         
//         //Get nearby address
//         
//         CLPlacemark *placemark = [placemarks objectAtIndex:0];
//         
//         
//         
//         //String to hold address
//         
//         NSString *locatedAt = [[placemark.addressDictionary valueForKey:@"FormattedAddressLines"] componentsJoinedByString:@", "];
//         
//         
//         
//         //Print the location to console
//         
//         //currentLocationAddress = locatedAt;
//       //  NSLog(@"I am currently at %@",currentLocationAddress);
//
//         
//         
//     }];
//    
//
//}
//
//}
//-(void)getAddress
//{
//    NSDate *start = [NSDate dateWithTimeIntervalSinceNow:0];
//    NSDate *finish = [NSDate dateWithTimeIntervalSinceNow:86400];
//    
//    // use Dictionary for remove duplicates produced by events covered more one year segment
//    NSMutableDictionary *eventsDict = [NSMutableDictionary dictionaryWithCapacity:1024];
//    
//    NSDate* currentStart = [NSDate dateWithTimeInterval:0 sinceDate:start];
//    
//    int seconds_in_year = 60*60*24;
//    
//    // enumerate events by one year segment because iOS do not support predicate longer than 4 year !
//    //    while ([currentStart compare:finish] == NSOrderedAscending) {
//    
//    NSDate* currentFinish = [NSDate dateWithTimeInterval:seconds_in_year sinceDate:currentStart];
//    
//    if ([currentFinish compare:finish] == NSOrderedDescending) {
//        currentFinish = [NSDate dateWithTimeInterval:0 sinceDate:finish];
//    }
//    EKEventStore *eventStore = [[EKEventStore alloc] init];
//    // Get the appropriate calendar
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    
//    // Create the start date components
//    NSDateComponents *oneDayAgoComponents = [[NSDateComponents alloc] init];
//    oneDayAgoComponents.day = -1;
//    NSDate *oneDayAgo = [NSDate dateWithTimeIntervalSinceNow:0];
//    
//    // Create the end date components
//    NSDateComponents *oneYearFromNowComponents = [[NSDateComponents alloc] init];
//    oneYearFromNowComponents.year = 1;
//    NSDate *oneYearFromNow = [NSDate dateWithTimeIntervalSinceNow:60*60*24];
//    
//    // Create the predicate from the event store's instance method
//    NSPredicate *predicate = [eventStore predicateForEventsWithStartDate:oneDayAgo
//                                                                 endDate:oneYearFromNow
//                                                               calendars:nil];
//    
//    // Fetch all events that match the predicate
//    NSArray *events = [eventStore eventsMatchingPredicate:predicate];
//    EKEvent *nextEvent = events[0];
//    nextEventAddress = nextEvent.location;
//    NSLog(@"%@",nextEventAddress);
//
//}
// 
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
}

-(void)pog
{
    
}


@end

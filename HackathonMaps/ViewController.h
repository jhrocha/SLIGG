//
//  ViewController.h
//  HackathonMaps
//
//  Created by Lucas Farah on 11/23/14.
//  Copyright (c) 2014 Lucas Farah. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MapKit;

@interface ViewController : UIViewController <CLLocationManagerDelegate>
-(void)getAddress;
-(void)pog;


@end


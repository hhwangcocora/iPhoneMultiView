//
//  LocationController.m
//  CodeWithChrisSingleView
//
//  Created by Huihong Wang on 1/1/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LocationController.h"
#import "Location.h"

@implementation LocationController

- (Location*)getMapLocation
{
    
    Location* poi = [[Location alloc]init];
    poi.mapImage = @"map.jpg";
    poi.locationName = @"Prudential Center, Boston";
    poi.latitude = 42.347111;
    poi.longitude = -71.081715;
    return poi;
}

@end
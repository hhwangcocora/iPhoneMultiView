//
//  MapViewController.m
//  CodeWithChrisSingleView
//
//  Created by Huihong Wang on 1/1/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LocationController.h"
#import "MapViewController.h"
#import "Location.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad
{
    NSLog(@"MapViewController: viewDidLoad");
}

- (void)viewDidAppear:(BOOL)animated
{
    Location* location = [[[LocationController alloc]init]getMapLocation];
    CLLocationCoordinate2D coord;
    coord.latitude = location.latitude;
    coord.longitude = location.longitude;
    MKCoordinateRegion region = MKCoordinateRegionMake(coord, MKCoordinateSpanMake(0.05, 0.05));
    [self.mapView setRegion:region];
}

@end
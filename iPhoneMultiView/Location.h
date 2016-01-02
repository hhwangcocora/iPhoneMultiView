//
//  Location.h
//  CodeWithChrisSingleView
//
//  Created by Huihong Wang on 1/1/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (nonatomic, strong) NSString* mapImage;
@property (nonatomic, strong) NSString* locationName;
@property (nonatomic) float latitude;
@property (nonatomic) float longitude;

@end



//
//  APIClient.h
//  API-Demo
//
//  Created by Jennifer A Sipila on 6/4/17.
//  Copyright © 2017 Jennifer A Sipila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weather.h"


@interface APIClient : NSObject

+ (void)getCurrentWeatherWithCityName:(NSString *)city andState:(NSString *)state success:(void (^)(Weather *weather))success;

@end

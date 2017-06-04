//
//  APIClient.m
//  API-Demo
//
//  Created by Jennifer A Sipila on 6/4/17.
//  Copyright © 2017 Jennifer A Sipila. All rights reserved.
//

#import "APIClient.h"
#import <AFNetworking/AFNetworking.h>


@implementation APIClient

NSString *myKey = @"ba8650a653cc9468";

+ (void)getCurrentWeatherWithCityName:(NSString *)city andState:(NSString *)state success:(void (^)(Weather *weather))success {
    NSString *urlString = [NSString stringWithFormat: @"http://api.wunderground.com/api/%@/conditions/q/%@/%@.json", myKey, city, state];
                           
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
    [sessionManager GET: urlString parameters:nil progress:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        if(responseObject) {
            NSDictionary *weatherData = responseObject; //Comes in dictionary format
            Weather *weather = [[Weather alloc] init];
            if ([weatherData valueForKeyPath:@"current_observation"]) {
                weather.temp = [weatherData[@"current_observation"] valueForKeyPath:@"temp_f"];
                weather.condition = [weatherData[@"current_observation"] valueForKeyPath:@"weather"];
            }
            success(weather);
        } else {
            NSLog(@"There was an error getting a response object from the API");
        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (error.code == -1009) {
            //Handle internet connection issue
            [[NSNotificationCenter defaultCenter] postNotificationName:@"InternetConnectionError" object:nil userInfo:nil];
        }
        if (error.code == - 1011) {
            //Handle lack of images issue
            [[NSNotificationCenter defaultCenter] postNotificationName:@"FetchingError" object:nil userInfo:nil];
        }
    }];
}


@end

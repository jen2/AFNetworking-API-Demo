//
//  ViewController.m
//  API-Demo
//
//  Created by Jennifer A Sipila on 6/4/17.
//  Copyright © 2017 Jennifer A Sipila. All rights reserved.
//

#import "ViewController.h"
#import "APIClient.h"
#import "Weather.h"

@interface ViewController ()

//@property (strong, nonatomic) APIClient *client;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getCurrentWeather];
}

- (void)getCurrentWeather {
    [APIClient getCurrentWeatherWithCityName:@"San_Francisco" andState:@"CA" success:^(Weather *weather) {
        //Handle the success weather object
        NSLog(@"The temperature is: %@", weather.temp);
        NSLog(@"The current weather condition is: %@", weather.condition);
    }];
    
}



@end

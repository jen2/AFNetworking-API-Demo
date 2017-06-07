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
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *conditionLabel;

@property (strong, nonatomic) NSString *condition;
@property (strong, nonatomic) NSString *temp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getCurrentWeather];
    
    
}

- (void)getCurrentWeather {
    [APIClient getCurrentWeatherWithCityName:@"San_Francisco" andState:@"CA" success:^(Weather *weather) {
        //Handle the success weather object
        
        self.condition = weather.condition;
        self.temp = [NSString stringWithFormat:@"%@", weather.condition];
        
        self.tempLabel.text = self.temp;
        self.conditionLabel.text = self.condition;
        
        NSLog(@"The temperature is: %@", weather.temp);
        NSLog(@"The current weather condition is: %@", weather.condition);
    }];
    
}



@end

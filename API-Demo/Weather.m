//
//  Weather.m
//  API-Demo
//
//  Created by Jennifer A Sipila on 6/4/17.
//  Copyright © 2017 Jennifer A Sipila. All rights reserved.
//

#import "Weather.h"


@implementation Weather

- (instancetype) initWithTemp:(NSNumber *)temp weatherCondition:(NSString *)condition
{
    self = [super init];
    if (self) {
         _temp = temp;
        _condition = condition;
    }
    return self;
}

//- (instancetype) init {
//    self = [self initWithTemp:(CGFloat)temp weatherCondition:(NSString *)condition];
//    
//    return self;
//}

@end

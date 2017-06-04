//
//  Weather.h
//  API-Demo
//
//  Created by Jennifer A Sipila on 6/4/17.
//  Copyright © 2017 Jennifer A Sipila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Weather : NSObject

@property (nonatomic) NSNumber *temp;
@property (nonatomic, strong) NSString *condition;

- (instancetype) initWithTemp:(NSNumber *)temp weatherCondition:(NSString *)condition;

@end

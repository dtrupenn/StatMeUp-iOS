//
//  HealthData.m
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import "HealthData.h"

@implementation HealthData

-(id) init {
    self = [super init];
    if (self) {
        _val = 0.0;
        _date = [[NSDate alloc] init];
        return self;
    }
    return nil;
}

-(id) initWithVal:(float)value date:(NSDate *)date {
    self = [super init];
    if (self) {
        _val = value;
        _date = date;
        return self;
    }
    return nil;
}

@end

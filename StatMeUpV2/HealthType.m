//
//  HealthType.m
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import "HealthType.h"
#import "HealthData.h"

@implementation HealthType

-(id) init {
    self = [super init];
    if (self) {
        _name = [[NSString alloc] init];
        _dataList = [[NSMutableArray alloc] init];
        _date = [[NSDate alloc] init];
        _avg = 0.0;
        _mdn = 0.0;
        _min = 0.0;
        _max = 0.0;
        _start = NO;
        return self;
    }
    return nil;
}

-(id) initWithName:(NSString *)name date:(NSDate *)date {
    self = [super init];
    if (self) {
        _name = name;
        _dataList = [[NSMutableArray alloc] init];
        _date = date;
        _avg = 0.0;
        _mdn = 0.0;
        _min = 0.0;
        _max = 0.0;
        _start = NO;
        return self;
    }
    return nil;
}

-(void) addHealthData:(HealthData *)data {
    [_dataList addObject:data];
}

-(void) removeHealthData:(HealthData *)data {
    [_dataList removeObject:data];
}

-(void) addHeathVal:(float)val {
    HealthData *health = [[HealthData alloc] initWithVal:val date:[NSDate date]];
    _date = [NSDate date];
    [_dataList addObject:health];
    if (_start == NO) {
        _avg = val;
        _mdn = val;
        _min = val;
        _max = val;
        _start = YES;
    } else {
        if (_min > val) {
            _min = val;
        }
        if (_max < val) {
            _max = val;
        }
        //Calculate mean and median
        HealthData *temp = [_dataList objectAtIndex:[_dataList count]/2];
        _mdn = temp.val;
        if ([_dataList count] % 2 && [_dataList count] != 1){
            temp = [_dataList objectAtIndex:([_dataList count]/2 + 1)];
            _mdn = (_mdn + temp.val)/2.0;
        }
        
        float sum = 0;
        for (HealthData *data in _dataList) {
            sum = sum + data.val;
        }
        _avg = sum/[_dataList count];

    }
    
}

@end

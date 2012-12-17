//
//  HealthTypeDataController.m
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import "HealthTypeDataController.h"
#import "HealthType.h"

@interface HealthTypeDataController ()
- (void)initializeDefaultDataList;
@end

@implementation HealthTypeDataController

- (void)initializeDefaultDataList {
    NSMutableArray *typeList = [[NSMutableArray alloc] init];
    _masterHealthTypeList = typeList;
    [self addTypeWithName:@"BloodPressure (BP)"];
    [self addTypeWithName:@"Temperature (TEMP)"];
    [self addTypeWithName:@"Weight (WGHT)"];
}

- (void)setMasterHealthTypeList:(NSMutableArray *)newList {
    if (_masterHealthTypeList != newList) {
        _masterHealthTypeList = [newList mutableCopy];
    }
}

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (NSUInteger)countOfList {
    return [self.masterHealthTypeList count];
}

- (HealthType *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterHealthTypeList objectAtIndex:theIndex];
}

-(void)addTypeWithName:(NSString *)inputName {
    HealthType *health;
    NSDate *today = [NSDate date];
    health = [[HealthType alloc] initWithName:inputName date:today];
    [_masterHealthTypeList addObject:health];
    
}

@end

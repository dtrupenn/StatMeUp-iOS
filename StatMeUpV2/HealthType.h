//
//  HealthType.h
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HealthData;

@interface HealthType : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSMutableArray *dataList;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic) float avg;
@property (nonatomic) float mdn;
@property (nonatomic) float min;
@property (nonatomic) float max;
@property (nonatomic) bool start;

-(id)init;

-(id)initWithName:(NSString *)name date:(NSDate *)date;

-(void) addHealthData:(HealthData *)data;

-(void) addHeathVal:(float)val;

@end

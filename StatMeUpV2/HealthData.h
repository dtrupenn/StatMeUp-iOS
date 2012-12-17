//
//  HealthData.h
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HealthData : NSObject

@property (nonatomic) float val;
@property (nonatomic, strong) NSDate *date;

-(id)init;

-(id)initWithVal:(float)value date:(NSDate *)date;

@end

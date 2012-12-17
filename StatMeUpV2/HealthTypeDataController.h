//
//  HealthTypeDataController.h
//  StatMeUpV2
//
//  Created by Dan Trujillo on 12/17/12.
//  Copyright (c) 2012 Dan Trujillo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HealthType;

@interface HealthTypeDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterHealthTypeList;

- (NSUInteger)countOfList;
- (HealthType *) objectInListAtIndex: (NSUInteger) theIndex;
- (void)addTypeWithName:(NSString *) inputName;

@end

//
//  Survey.h
//  Survey Gerbil
//
//  Created by iGuest on 10/13/14.
//  Copyright (c) 2014 Schoeggl apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Survey : NSObject

@property (strong, nonatomic) NSMutableArray *observations;
- (void)addObservation;

+ (instancetype)surveyWithSampleData;

@end

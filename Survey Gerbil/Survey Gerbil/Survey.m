//
//  Survey.m
//  Survey Gerbil
//
//  Created by iGuest on 10/13/14.
//  Copyright (c) 2014 Schoeggl apps. All rights reserved.
//

#import "Survey.h"
#import "Observation.h"

@implementation Survey

- (id) init;
{
    if ([super init] && !self.observations) {
        self.observations = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addObservation;
{
    [self.observations addObject:[[Observation alloc] init]];
}

+ (instancetype)surveyWithSampleData;
{
    Survey *result = [[Survey alloc] init];
    for (NSUInteger i = 0; i < 5; i++) {
        Observation *new = [[Observation alloc] init];
        new.comment = [NSString stringWithFormat:@"index == %zd", i];
        [result.observations addObject:new];
    }
    return result;
}

- (NSString) description;
{
    NSMutableString *result = [NSMutableString stringWithFormat:@"Survey with %zd observations\n", self.observations.count];
    for (Observation *o in self.observations) {
        [result appendString:[o description]];
        [result appendString:@"\n"];
    }
    return result;
}
@end

//
//  Observation.m
//  Survey Gerbil
//
//  Created by iGuest on 10/13/14.
//  Copyright (c) 2014 Schoeggl apps. All rights reserved.
//

#import "Observation.h"

@implementation Observation

- (id) init;
{
    if ([super init]) {
        _time = [NSDate date];
        _comment = @"";
        self.defectKind = ObsDefKindUnknown;
    }
    return self;
}

+ (NSString *)stringForDefectKind:(ObsDefKind)kind;
{
    switch (kind) {
        case ObsDefKindUnknown: return @"Unknown";
        case ObsDefKindPothole: return @"Pothole";
        case ObsDefKindGraffiti: return @"Graffiti";
        case ObsDefKindDefectiveSign: return @"Defective Sign";
        case ObsDefKindMax: return @"";
    }
}

- (NSString *) description;
{
    NSMutableString *result = [NSMutableString stringWithFormat: @"Defect Kind: %@", [Observation stringForDefectKind:self.defectKind]];
    return result;
    
}

@end

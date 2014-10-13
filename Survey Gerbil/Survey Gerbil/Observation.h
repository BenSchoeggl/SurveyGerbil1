//
//  Observation.h
//  Survey Gerbil
//
//  Created by iGuest on 10/13/14.
//  Copyright (c) 2014 Schoeggl apps. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ObsDefKind) {
    ObsDefKindUnknown,
    ObsDefKindPothole,
    ObsDefKindGraffiti,
    ObsDefKindDefectiveSign,
    ObsDefKindMax
};


@interface Observation : NSObject

@property (strong, nonatomic) NSDate *time;
@property (assign, nonatomic) ObsDefKind defectKind;
@property (copy, nonatomic) NSString *comment;
+ (NSString *)stringForDefectKind:(ObsDefKind)kind;
@property (strong, nonatomic) NSNumber *longitude;
@property (strong, nonatomic) NSNumber *latitude;


@end

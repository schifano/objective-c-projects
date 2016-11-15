//
//  Employee.m
//  ArchivingDemo
//
//  Created by Simon Allardice on 11/2/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import "Employee.h"

@implementation Employee

// keyed archiver object looks for this
-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.firstName forKey:@"fname"];
    [aCoder encodeObject:self.lastName forKey:@"lname"];
    [aCoder encodeObject:self.hireDate forKey:@"hdate"];
    [aCoder encodeInt:self.employeeNumber forKey:@"empnum"];
}

// specialized init, set properties of new object with saved values in the file
-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        // our code
        _firstName = [aDecoder decodeObjectForKey:@"fname"];
        _lastName = [aDecoder decodeObjectForKey:@"lname"];
        _hireDate = [aDecoder decodeObjectForKey:@"hdate"];
        _employeeNumber = [aDecoder decodeIntForKey:@"empnum"];
    }
    return self;
}

-(NSString *) description {
    NSString *desc = [NSString stringWithFormat:@"\t Employee: %i \n \t Name: %@ %@ \n \t Was hired on: %@ \n -----",[self employeeNumber],[self firstName],[self lastName], [self hireDate] ];
    return  desc;
}



@end

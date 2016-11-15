//
//  main.m
//  ArchivingDemo
//
//  Created by Simon Allardice on 11/2/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create employee object
        Employee *bob = [[Employee alloc]init];
        [bob setFirstName:@"Robert"];
        [bob setLastName:@"Hernandez"];
        [bob setEmployeeNumber:12345];
        [bob setHireDate:[NSDate date]];
        
        // create another, using dot syntax for properties
        Employee *alice = [[Employee alloc]init];
        alice.firstName = @"Alice";
        alice.lastName = @"Fowler";
        alice.employeeNumber = 45678;
        alice.hireDate = [NSDate dateWithString:@"2010-03-24 09:00:00 -0800"];
        
        NSLog(@"First Employee: \n%@", [bob description]);
        NSLog(@"Second Employee: \n%@", alice);
        
        // create an array to hold multiple employees
        // NSMutableArray supports encoding/decoding
        // Can only archive itself as long as all objects inside the array also know how to archive themselves
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        [employees addObject:bob];
        [employees addObject:alice];
        // etc etc
        
        // root object meaning could pass in an entire object graph
        [NSKeyedArchiver archiveRootObject:employees toFile:@"/Users/schifano/Documents/employees.plist"];
        
    }
    return 0;
}


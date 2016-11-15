//
//  Employee.h
//  CustomClassExample
//
//  Created by Rachel Schifano on 10/30/16.
//  Copyright © 2016 schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name;
@property NSDate *hireDate;
@property int employeeNumber;

-(void) someMethod;

@end
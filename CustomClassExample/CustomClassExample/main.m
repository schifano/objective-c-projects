//
//  main.m
//  CustomClassExample
//
//  Created by Rachel Schifano on 10/30/16.
//  Copyright © 2016 schifano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Employee *fred = [[Employee alloc] init];
        [fred someMethod];
        [fred setName:@"Kittens"];
    }
    return 0;
}

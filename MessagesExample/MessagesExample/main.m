//
//  main.m
//  MessagesExample
//
//  Created by Rachel Schifano on 10/29/16.
//  Copyright © 2016 schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int minutes = 60;
        int hours = 24;
        int days = 365;
        
        int minutesInAYear = minutes * hours * days;
        
        NSLog(@"There are %i minutes in a year.", minutesInAYear);
    }
    return 0;
}

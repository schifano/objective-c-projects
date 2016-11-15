//
//  main.m
//  ExistingClasses
//
//  Created by Rachel Schifano on 10/29/16.
//  Copyright © 2016 schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *message = @"Hello";
        NSString *shoutyMessage = [message uppercaseString];
        
        NSLog(@"The NSString objects are %@ and %@", message, shoutyMessage);
        
        NSDate *today = [NSDate date];
        NSLog(@"The new NSDate object is: %@", today);
    }
    return 0;
}

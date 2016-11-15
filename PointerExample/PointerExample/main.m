//
//  main.m
//  PointerExample
//
//  Created by Rachel Schifano on 10/29/16.
//  Copyright © 2016 schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

void myFunction(NSString* x) {
    NSLog(@"The string you passed in was %@", x);
}


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {

        // Doesn't matter where the * goes
        NSString *firstWord = @"one";
        NSString * secondWord = @"large";
        
        NSString* thirdWord;
        thirdWord = @"pomegranate";
        
        myFunction(thirdWord);
    }
    return 0;
}

//
//  main.m
//  SwitchExample
//
//  Created by Simon Allardice on 10/28/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int stormCategory = 4; // create a variable
        
        switch(stormCategory) {
            case 1:
                NSLog(@"Time to get indoors.");
                break;
            case 2:
                NSLog(@"Extensive damage - run and hide!");
                break;
            case 3:
                NSLog(@"Devastating damage! Oh no!");
                break;
            case 4:
                NSLog(@"Catastrophic damage! Game over, man!");
                break;
            default:
                break;
        }
    }
    return 0;
}


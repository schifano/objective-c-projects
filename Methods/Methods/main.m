//
//  main.m
//  Methods
//
//  Created by Rachel Schifano on 10/30/16.
//  Copyright © 2016 schifano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MathUtility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        MathUtility *util = [[MathUtility alloc] init];
        
        int result = [util timesTen:55];
        NSLog(@"The result of timesTen: - %i", result);
        
        result = [util addNumber:99 toNumber:42];
        NSLog(@"The result of the addNumber:toNumber: = %i", result); 
    }
    return 0;
}

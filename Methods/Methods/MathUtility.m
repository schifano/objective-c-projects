//
//  MathUtility.m
//  Methods
//
//  Created by Rachel Schifano on 10/30/16.
//  Copyright © 2016 schifano. All rights reserved.
//

#import "MathUtility.h"

@implementation NSObject (MathUtility)

-(int)timesTen: (int)number {
    NSLog(@"You passed in the value: %i", number);
    return number * 10;
}

-(int)addNumber:(int)a toNumber:(int)b {
    return a + b;
}

@end
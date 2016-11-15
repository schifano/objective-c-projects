//
//  main.m
//  ReadWriteStrings
//
//  Created by Rachel Schifano on 10/30/16.
//  Copyright © 2016 schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // get the Documents directory
        NSURL *documentDirectory = [[NSFileManager defaultManager] URLForDirectory:
                                     NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        // create a full path
        NSURL *full = [documentDirectory URLByAppendingPathComponent:@"sample.txt"];
        
        // load the string
        NSMutableString *content = [[NSMutableString alloc] initWithContentsOfURL: full encoding:NSUTF8StringEncoding error:nil];
        
        // new string
        [content appendString:@"CHANGED!"];
        
        // destination URL
        NSURL *saveLocation = [documentDirectory URLByAppendingPathComponent:@"saved.txt"];
        [content writeToURL:saveLocation atomically:YES encoding:NSUTF8StringEncoding error:nil];
    }
    return 0;
}

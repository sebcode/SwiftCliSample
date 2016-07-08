//
//  main.m
//  SwiftCliSample
//
//  Created by Sebastian Volland on 08/07/16.
//  Copyright © 2016 sv. All rights reserved.
//

#import <Foundation/Foundation.h>

@import SwiftCliFramework;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray * arguments = [[NSMutableArray alloc] initWithCapacity:argc];
        for (int i = 0; i < argc; i++) {
            [arguments addObject:[NSString stringWithCString:argv[i] encoding:NSASCIIStringEncoding]];
        }

        [App run:arguments];
    }
    return 0;
}

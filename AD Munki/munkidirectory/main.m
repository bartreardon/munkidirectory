//
//  main.m
//  munkidirectory
//
//  Created by Magnus Eliasson on 11/28/12.
//  Copyright (c) 2012 Magnus Eliasson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DirectoryHandler.h"
#import "PlistHandler.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        DirectoryHandler *handler = [[DirectoryHandler alloc] init];
        PlistHandler *plist = [[PlistHandler alloc] init];
        NSArray *computers = [handler getComuterGroups];
        NSArray *munkiNames = [handler getMunkiNames:computers];
        [plist createPlistFromNames:munkiNames];
        
    }
    return 0;
}

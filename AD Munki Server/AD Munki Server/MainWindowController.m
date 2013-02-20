//
//  MainWindowController.m
//  AD Munki Server
//
//  Created by Magnus Eliasson on 12/10/12.
//  Copyright (c) 2012 Magnus Eliasson. All rights reserved.
//

#import "MainWindowController.h"

@interface MainWindowController ()

@end

@implementation MainWindowController
@synthesize arr;
@synthesize pUtil;

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        pUtil = [[PlistUtil alloc] initPlistUtil];
        arr = [pUtil condRecords];
    }
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    if (!pUtil.dirUtil) {
        [NSApp beginSheet:[noAdSheet window]
           modalForWindow:[self window]
            modalDelegate:self
           didEndSelector:@selector(didEndSheet:returnCode:contextInfo:)
              contextInfo:nil];
    }
}


- (void)saveState {
    
    [pUtil putArrToPlist:arr];
}

- (void)didEndSheet:(NSWindow *)sheet returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo {
    
    [sheet orderOut:self];
    [NSApp terminate:nil];
}

@end

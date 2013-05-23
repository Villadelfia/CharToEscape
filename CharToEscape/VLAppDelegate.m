//
//  VLAppDelegate.m
//  CharToEscape
//
//  Created by Randy Thiemann on 23/05/13.
//  Copyright (c) 2013 villadelfia. All rights reserved.
//

#import "VLAppDelegate.h"

@implementation VLAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
    // Insert code here to initialize your application
}

- (void)controlTextDidChange:(NSNotification *)notification {
    if([notification object] == _fromField) {
        NSString *fromString = [_fromField stringValue];
        NSData *data = [fromString dataUsingEncoding:NSNonLossyASCIIStringEncoding];
        NSString *toString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        [_toField setStringValue:toString];
    }
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
    return YES;
}
@end

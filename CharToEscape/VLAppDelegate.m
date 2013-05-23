//
//  VLAppDelegate.m
//  CharToEscape
//
//  Created by Randy Thiemann on 23/05/13.
//  Copyright (c) 2013 villadelfia.
//

#import "VLAppDelegate.h"

@implementation VLAppDelegate

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

- (IBAction)copyIt:(id)sender {
    [[NSPasteboard generalPasteboard] clearContents];
    [[NSPasteboard generalPasteboard] setString:[_toField stringValue]  forType:NSStringPboardType];
}
@end

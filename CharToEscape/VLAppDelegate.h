//
//  VLAppDelegate.h
//  CharToEscape
//
//  Created by Randy Thiemann on 23/05/13.
//  Copyright (c) 2013 villadelfia.
//

#import <Cocoa/Cocoa.h>

@interface VLAppDelegate : NSObject <NSApplicationDelegate, NSTextFieldDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *fromField;
@property (weak) IBOutlet NSTextField *toField;
- (IBAction)copyIt:(id)sender;

@end

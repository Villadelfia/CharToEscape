//
//  VLTextField.m
//  CharToEscape
//
//  Created by Randy Thiemann on 23/05/13.
//  Copyright (c) 2013 villadelfia.
//

#import "VLTextField.h"

@implementation VLTextField

- (BOOL)becomeFirstResponder {
    BOOL result = [super becomeFirstResponder];
    if(result)
        [self performSelector:@selector(selectText:) withObject:self afterDelay:0];
    return result;
}

@end

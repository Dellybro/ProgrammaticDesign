//
//  User.m
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/11/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import "User.h"

@implementation User

-(BOOL)isLoggedIn{
    return YES;
}
-(BOOL)isCorrectPassword{
    return  YES;
}

-(id)init {
    
    if(self){
        _name = @"blank";
        _email = @"blank";
        _age = @"blank";
        _location = @"blank";
        _password = @"blank";
        _services = [[NSMutableArray alloc] initWithObjects:@"blank", @"blank", nil];
    }
    return self;
}

@end

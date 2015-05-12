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
        _name = @"name";
        _email = @"email";
        _age = @"age";
        _location = @"location";
        _password = @"password";
        _services = [[NSMutableArray alloc] initWithObjects:@"service1", @"service2", nil];
    }
    return self;
}

@end

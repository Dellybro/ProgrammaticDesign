//
//  User.h
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/11/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString* name;
@property NSString* age;
@property NSString* location;
@property NSString* email;
@property NSString* password;
@property BOOL provider;
@property NSMutableArray *services;


-(BOOL)isLoggedIn;
-(BOOL)isCorrectPassword;


@end

//
//  AppDelegate.h
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/8/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UserViewController.h"
#import "User.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (nonatomic) User *currentUser;


@property(nonatomic) UIWindow *window;

@end


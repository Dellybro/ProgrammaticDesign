//
//  SearchViewController.h
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/9/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserViewController.h"
#import "AppDelegate.h"

@interface SearchViewController : UIViewController

@property NSString* username;
@property NSString* password;

-(void)buttonAction:(UIButton*)button;

@end

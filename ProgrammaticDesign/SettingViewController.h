//
//  SettingViewController.h
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/11/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "UserViewController.h"


@interface SettingViewController : UIViewController



@property UserViewController* rootViewController;


@property UITextField* name;
@property UITextField* email;
@property UITextField* password;
@property UITextField* age;
@property UILabel *header;
@property UITextField *location;
@property UITableView *services;

@property UIButton* submit;

-(void) submitButton:(UIButton*)button;

@end

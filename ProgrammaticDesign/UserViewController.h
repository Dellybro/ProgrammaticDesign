//
//  UserViewController.h
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/9/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "User.h"
#import "SearchViewController.h"
#import "SettingViewController.h"

@interface UserViewController : UIViewController

-(void)labels;

@property User* currentUser;

@property UILabel* aboutMe;
@property UILabel* services;
@property UILabel* header;
@property UIButton* SearchButton;
@property UILabel* username;
@property UILabel* email;
@property UILabel* location;
@property UILabel* age;
@property UILabel* password;
@property UIButton* settingsButton;


-(void)searchViewButton:(UIButton*)button;
-(void)settingControllerbutton:(UIButton*)button;

@end

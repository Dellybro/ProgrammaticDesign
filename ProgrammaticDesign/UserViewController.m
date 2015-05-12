//
//  UserViewController.m
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/9/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import "UserViewController.h"

@implementation UserViewController

-(void)settingControllerbutton:(UIButton*)button{
    SettingViewController *nextController = [[SettingViewController alloc]init];
    
    nextController.current_user = _currentUser;
    
    [self.navigationController showViewController:nextController sender:self];
    
}


-(void)searchViewButton:(UIButton*)button{
    SearchViewController *nextController = [[SearchViewController alloc] init];
    
    
    [self.navigationController showViewController:nextController sender:self];
    
}

-(void)labels{
    _username = [[UILabel alloc] initWithFrame:CGRectMake(20, 175, 100,40)];
    _email = [[UILabel alloc] initWithFrame:CGRectMake(20, 225, 100,40)];
    _location = [[UILabel alloc] initWithFrame:CGRectMake(20, 275, 100,40)];
    _age = [[UILabel alloc] initWithFrame:CGRectMake(20, 325, 100,40)];
    _services = [[UILabel alloc] initWithFrame:CGRectMake(20, 375, 100,40)];
    
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    [_username setText:_currentUser.name];
    [_email setText:_currentUser.email];
    [_location setText:_currentUser.location];
    [_age setText:_currentUser.age];
    
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    _currentUser = [[User alloc] init];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _SearchButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 450, 60, 40)];
    [_SearchButton setTitle:@"Search" forState:UIControlStateNormal];
    _SearchButton.backgroundColor = [UIColor blueColor];
    [_SearchButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [_SearchButton addTarget:self action:@selector(searchViewButton:) forControlEvents:(UIControlEventTouchUpInside)];
    
    
    _settingsButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 450, 90, 40)];
    [_settingsButton setTitle:@"Settings" forState:UIControlStateNormal];
    _settingsButton.backgroundColor = [UIColor blueColor];
    [_settingsButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [_settingsButton addTarget:self action:@selector(settingControllerbutton:) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self labels];

    
    _header = [[UILabel alloc] initWithFrame:CGRectMake(50,50, 500, 125)];
    [_header setText:@"Welcome to your profile" ];
    [_header setTextColor:[UIColor orangeColor]];
    [_header setAdjustsFontSizeToFitWidth:YES];
    [_header setFont:[UIFont systemFontOfSize:24]];
    
    self.navigationItem.title = @"User Login";
    
    
    [self.view addSubview:_username];
    [self.view addSubview:_SearchButton];
    [self.view addSubview:_settingsButton];
    [self.view addSubview:_email];
    [self.view addSubview:_location];
    [self.view addSubview:_age];
    [self.view addSubview:_header];
    [self.view addSubview:_services];
    
}


-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

@end

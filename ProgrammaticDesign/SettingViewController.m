//
//  SettingViewController.m
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/11/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import "SettingViewController.h"
#import "UserViewController.h"

@interface SettingViewController ()

@end



@implementation SettingViewController


-(void)submitButton:(UIButton *)button{
    UserViewController *rootViewController = [self.navigationController.viewControllers firstObject];
    
    if(_name.text.length > 1){
        rootViewController.currentUser.name = _name.text;
        rootViewController.username.text = rootViewController.currentUser.name;
    }
    if(_location.text.length > 1){
        rootViewController.currentUser.location = _location.text;
        rootViewController.location.text = rootViewController.currentUser.location;
    }
    
    if(_email.text.length > 1){
        rootViewController.currentUser.email = _email.text;
        rootViewController.email.text = rootViewController.currentUser.email;
    }
    if(_age.text.length > 1){
        rootViewController.currentUser.age = _age.text;
        rootViewController.age.text = rootViewController.currentUser.age;
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _current_user = [[self.navigationController.viewControllers firstObject] currentUser];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _submit = [[UIButton alloc] initWithFrame:CGRectMake(20, 450, 60, 40)];
    [_submit setTitle:@"Submit" forState:UIControlStateNormal];
    _submit.backgroundColor = [UIColor blueColor];
    [_submit setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [_submit addTarget:self action:@selector(submitButton:) forControlEvents:(UIControlEventTouchUpInside)];
    
    
    _name = [[UITextField alloc] initWithFrame:CGRectMake(20, 175, 100,40)];
    [_name setText:_current_user.name];
    
    _email = [[UITextField alloc] initWithFrame:CGRectMake(20, 225, 100,40)];
    [_email setText:_current_user.email];
    
    _location = [[UITextField alloc] initWithFrame:CGRectMake(20, 275, 100,40)];
    [_location setText:_current_user.location];
    
    _age = [[UITextField alloc] initWithFrame:CGRectMake(20, 325, 100,40)];
    [_age setText:_current_user.age];
    
    
    _header = [[UILabel alloc] initWithFrame:CGRectMake(50,50, 500, 125)];
    [_header setText:@"Reset your Information" ];
    [_header setTextColor:[UIColor orangeColor]];
    [_header setAdjustsFontSizeToFitWidth:YES];
    [_header setFont:[UIFont systemFontOfSize:24]];
    
    self.navigationItem.title = @"Settings";
    
    _services = [[UITableView alloc] initWithFrame:CGRectMake(20,375, 150,150)];
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = _current_user.services[0];
    _services.editing = YES;
    
    
    [_services addSubview:cell];
    
    [self.view addSubview:_name];
    [self.view addSubview:_submit];
    [self.view addSubview:_email];
    [self.view addSubview:_location];
    [self.view addSubview:_age];
    [self.view addSubview:_header];
    [self.view addSubview:_services];
}

@end

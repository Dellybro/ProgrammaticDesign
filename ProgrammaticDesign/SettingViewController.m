//
//  SettingViewController.m
//  ProgrammaticDesign
//  Upload to git: git push https://github.com/Dellybro/ProgrammaticDesign.git
//  Created by Travis Delly on 5/11/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end



@implementation SettingViewController



-(void)submitButton:(UIButton *)button{
    
    
    if(_name.text.length > 1){
        _rootViewController.currentUser.name = _name.text;
    }
    if(_location.text.length > 1){
        _rootViewController.currentUser.location = _location.text;
    }
    
    if(_email.text.length > 1){
        _rootViewController.currentUser.email = _email.text;
    }
    if(_age.text.length > 1){
        _rootViewController.currentUser.age = _age.text;
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _rootViewController = [self.navigationController.viewControllers firstObject];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(20,375, 150,150) style:UITableViewStylePlain];
    
    // must set delegate & dataSource, otherwise the the table will be empty and not responsive
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    // add to canvas
    [self.view addSubview:_tableView];
    
    
    //End table View
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _submit = [[UIButton alloc] initWithFrame:CGRectMake(20, 520, 60, 40)];
    [_submit setTitle:@"Submit" forState:UIControlStateNormal];
    _submit.backgroundColor = [UIColor blueColor];
    [_submit setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [_submit addTarget:self action:@selector(submitButton:) forControlEvents:(UIControlEventTouchUpInside)];
    
    
    _name = [[UITextField alloc] initWithFrame:CGRectMake(20, 175, 100,40)];
    [_name setText:_rootViewController.currentUser.name];
    
    _email = [[UITextField alloc] initWithFrame:CGRectMake(20, 225, 100,40)];
    [_email setText:_rootViewController.currentUser.email];
    
    _location = [[UITextField alloc] initWithFrame:CGRectMake(20, 275, 100,40)];
    [_location setText:_rootViewController.currentUser.location];
    
    _age = [[UITextField alloc] initWithFrame:CGRectMake(20, 325, 100,40)];
    [_age setText:_rootViewController.currentUser.age];
    
    
    _header = [[UILabel alloc] initWithFrame:CGRectMake(50,50, 500, 125)];
    [_header setText:@"Reset your Information" ];
    [_header setTextColor:[UIColor orangeColor]];
    [_header setAdjustsFontSizeToFitWidth:YES];
    [_header setFont:[UIFont systemFontOfSize:24]];
    
    self.navigationItem.title = @"Settings";
    
    
    [self.view addSubview:_name];
    [self.view addSubview:_submit];
    [self.view addSubview:_email];
    [self.view addSubview:_location];
    [self.view addSubview:_age];
    [self.view addSubview:_header];
}

//Table View Delegation
#pragma mark - UITableViewDataSource

// number of section(s), now I assume there is only 1 section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView
{
    return 1;
}

// number of row in the section, I assume there is only 1 row
- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

// the cell will be returned to the tableView
- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"HistoryCell";
    
    // Similar to UITableViewCell, but
    UITableViewCell *cell = (UITableViewCell *)[theTableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    // Just want to test, so I hardcode the data
    cell.textLabel.text = @"Hello";
    
    return cell;
}

#pragma mark - UITableViewDelegate
// when user tap the row, what action you want to perform
- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected %ld row", (long)indexPath.row);
}

@end

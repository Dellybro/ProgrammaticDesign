//
//  SearchViewController.m
//  ProgrammaticDesign
//
//  Created by Travis Delly on 5/9/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import "SearchViewController.h"

@implementation SearchViewController


-(void)buttonAction:(UIButton*)button{
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(120, 450, 60, 40)];
    [button setTitle:@"Submit" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self.view addSubview:button];
    self.navigationItem.title = @"Search";
}

@end

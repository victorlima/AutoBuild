//
//  ABViewController.m
//  AutoBuildCD
//
//  Created by Victor Lima on 9/29/12.
//  Copyright (c) 2012 concretesolutions. All rights reserved.
//

#import "ABViewController.h"

@interface ABViewController ()

@end

@implementation ABViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Action
-( IBAction) showAlert:(id)sender
{
  UIAlertView* alert = [[UIAlertView alloc] initWithTitle: @"Bem vindo"
                                                  message: @"Sejam bem vindos"
                                                 delegate: nil
                                        cancelButtonTitle: @"Ok"
                                        otherButtonTitles: nil];
  
  [alert show];
}


@end

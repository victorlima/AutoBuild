//
//  ABViewControllerTests.m
//  AutoBuildCD
//
//  Created by Victor Lima on 9/29/12.
//  Copyright (c) 2012 concretesolutions. All rights reserved.
//

#import "ABViewControllerTests.h"

@implementation ABViewControllerTests

-( void ) test_subviews_count
{
  ABViewController* abvc = [[ABViewController alloc] init];
  STAssertTrue( [abvc.view.subviews count] == 0, @"" );
}

@end

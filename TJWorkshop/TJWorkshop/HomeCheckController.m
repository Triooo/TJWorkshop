//
//  HomeCheckController.m
//  TJWorkshop
//
//  Created by Bill on 12-7-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "HomeCheckController.h"

@interface HomeCheckController ()

@end

@implementation HomeCheckController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
           }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //set navigationbar 
    //[[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"bar.png"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

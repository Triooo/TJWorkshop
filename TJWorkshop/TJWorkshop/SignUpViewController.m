//
//  SignUpViewController.m
//  TJWorkshop
//
//  Created by yougmark on 12-7-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController
@synthesize nameOfNewCount = _nameOfNewCount;
@synthesize passwordOfNewCount = _passwordOfNewCount;
@synthesize emailOfNewCount = _emailOfNewCount;

/*

- (IBAction)signUpPressed {
    //把帐号信息保存到本地文件（将来保存到服务器）
    //转到登陆界面
}
*/














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
}

- (void)viewDidUnload
{
    [self setNameOfNewCount:nil];
    [self setPasswordOfNewCount:nil];
    [self setEmailOfNewCount:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

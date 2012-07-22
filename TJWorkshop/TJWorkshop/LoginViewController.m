//
//  LoginViewController.m
//  TJWorkshop
//
//  Created by yougmark on 12-7-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"
#import "User.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize nameOfAccount = _nameOfAccount;
@synthesize passwordOfAccount = _passwordOfAccount;



- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    [theTextField resignFirstResponder];
    return YES;
}

- (IBAction)logInPressed 
{
//      比较帐号和文件里的帐号决定是否登陆成功
//    FILE *f  = fopen("/Users/Yougmark/Desktop/1.txt", "rt");
//    char c;
//    [@"what" writeToFile:@"/Users/Yougmark/Desktop/1.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
//    fgets(&c,1,f);
//    NSLog(@"?");
    char cInfoOfThisUser[50] = {0};

    NSString *infoFromAccountInfo = [NSString stringWithContentsOfFile:@"/Users/Yougmark/Desktop/AccountInfo.txt"];
    NSRange rangeOfName = [infoFromAccountInfo rangeOfString:self.nameOfAccount.text];
    if (rangeOfName.length > 0) {
        NSLog(@"Range is %@",NSStringFromRange(rangeOfName));
        rangeOfName.location +=rangeOfName.length +1;
        rangeOfName.length = 50;
        [infoFromAccountInfo getCString:cInfoOfThisUser maxLength:50 range:rangeOfName remainingRange:nil];
        if ([self isAccountAccessible:cInfoOfThisUser]) {
            NSLog(@"Accessible");
        }
        else {
            NSLog(@"Not Accessible");
        }
    }
    else {
        NSLog(@"Not Accessible");
    }
}



-(BOOL)isAccountAccessible:(char *)cstr
{
    int i = 0;
    int j = 0;
    while (cstr[i] != ' ') {
        j++;
        i++;
    }
    if ([self.passwordOfAccount.text isEqualToString:[NSString stringWithCString:cstr length:j]])
    {
        return YES;
    }
    else {
        return NO;
    }
//    j = 0;
//    i++;
//    while (cstr[i] != ' ' && cstr[i] != '\n' )
//    {
//        j++;
//        i++;
//    }
//    [self.passwordOfAccount.text isEqualToString:[NSString stringWithCString:cstr length:j]];
}



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
    [self setNameOfAccount:nil];
    [self setPasswordOfAccount:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

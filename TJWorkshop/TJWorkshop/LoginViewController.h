//
//  LoginViewController.h
//  TJWorkshop
//
//  Created by yougmark on 12-7-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameOfAccount;
@property (weak, nonatomic) IBOutlet UITextField *passwordOfAccount;
- (IBAction)logInPressed ;
@end

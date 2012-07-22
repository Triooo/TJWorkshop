//
//  SignUpViewController.h
//  TJWorkshop
//
//  Created by yougmark on 12-7-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameOfNewAccount;
@property (weak, nonatomic) IBOutlet UITextField *passwordOfNewAccount;
@property (weak, nonatomic) IBOutlet UITextField *emailOfNewAccount;

- (NSString *)applicationDocumentsDirectory;

- (IBAction)signUpPressed;

@end

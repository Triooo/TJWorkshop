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
@synthesize nameOfNewAccount = _nameOfNewAccount;
@synthesize passwordOfNewAccount = _passwordOfNewAccount;
@synthesize emailOfNewAccount = _emailOfNewAccount;

- (IBAction)signUpPressed 
{
    NSString *documentsDirectoryPath = [self applicationDocumentsDirectory];
    NSFileManager *fm = [NSFileManager defaultManager];
    NSString *filePath;
    filePath = [documentsDirectoryPath stringByAppendingPathComponent:@"AccountInfo.txt"];
    filePath = [NSString stringWithFormat:@"/Users/Yougmark/Desktop/AccountInfo.txt"];
    
    //Now open outfile for writing 
    
    NSFileHandle *outFile = [NSFileHandle fileHandleForWritingAtPath:filePath];

//  [@"what happend" writeToFile:filePath atomically:YES
//                        encoding:NSUTF8StringEncoding
//                           error:Nil];
//    const char *cFilePath = [filePath UTF8String];
//    FILE *outFile = fopen(cFilePath, "a+");

    if ( outFile == nil ) //检测是否有AccountInfo.txt
    {
        NSLog(@"no existed AccountInfo.txt");
        [fm createFileAtPath:filePath contents:nil attributes:nil];
        outFile = [NSFileHandle fileHandleForWritingAtPath: filePath];
//      outFile = fopen(cFilePath, "a+");
    }
    if ( outFile != nil   )//文件不存在或两次密码相同
    { 
//把帐号信息保存到本地文件（将来保存到服务器）
       [self writeNewAccountIntoFile:outFile 
                      withNameOfNewAccount:self.nameOfNewAccount.text
                   andPasswordOfNewAccount:self.passwordOfNewAccount.text 
                            andEmail:self.emailOfNewAccount.text];
        NSLog(@"Success");
    }
    else
    { 
//文件不存在或者两次密码不同，清空密码，弹出框提示
        NSLog(@"Fail to open AccountInfo.txt");
    }

}
//bool putAWordIntoFile(FILE* cfile,const char* word,const char* c)
//{
//    int i = 0;
//    if (cfile != nil) 
//    {
//        NSLog(@"begin to input to AccountInfo.txt");
//        fputs(word,cfile);
//        putc(*c, cfile);
//        return true;
//    }
//    else {
//        NSLog(@"fail to input a word into file");
//        return false;
//    }
//}

-(void)writeNewAccountIntoFile:(NSFileHandle *)file
          withNameOfNewAccount:(NSString *)name
       andPasswordOfNewAccount:(NSString *)password 
                      andEmail:(NSString *)email
{
//    const char *cName = [name UTF8String];
//    const char *cPassword = [password UTF8String];
//    const char *cEmail = [email UTF8String];
//    if (!putAWordIntoFile(cfile, cName, " ")) {
//        NSLog(@"fail to input name of account to file");
//        return NO;
//    }
//    if (!putAWordIntoFile(cfile, cPassword, " ")) {
//        NSLog(@"fail to input password of account to file");
//        return NO;
//    }
//    if (!putAWordIntoFile(cfile, cEmail, "\n")) {
//        NSLog(@"fail to input email of account to file");
//        return NO;
//    }
//    else {
//        return YES;
//    }
//    NSError *error;
    NSString *wordToInput = [NSString stringWithFormat:@"%@ %@ %@\n",name,password,email];
    [file seekToEndOfFile];
    NSData *dataToWrite= [wordToInput dataUsingEncoding:NSUTF8StringEncoding];
    [file writeData:dataToWrite];
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (NSString *)applicationDocumentsDirectory
{
	return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
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
    [self setNameOfNewAccount:nil];
    [self setPasswordOfNewAccount:nil];
    [self setEmailOfNewAccount:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

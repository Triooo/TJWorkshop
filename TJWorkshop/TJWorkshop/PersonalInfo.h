//
//  PersonalInfo.h
//  Ticheck
//
//  Created by yougmark on 12-7-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonalInfo : NSObject
{
    NSString *nameOfAccount;
    NSString *passwordOfAccount;
    NSString *email;
}
@property (nonatomic,strong) NSString *nameOfAccount;
@property (nonatomic,strong) NSString *passwordOfAccount;
@property (nonatomic,strong) NSString *email;

@end

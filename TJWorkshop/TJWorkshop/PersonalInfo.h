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
    NSString *nameOfCount;
    NSString *passwordOfCount;
    NSString *email;
}
@property (nonatomic,strong) NSString *nameOfCount;
@property (nonatomic,strong) NSString *passwordOfCount;
@property (nonatomic,strong) NSString *email;

@end

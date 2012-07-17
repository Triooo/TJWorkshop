//
//  User.h
//  Ticheck
//
//  Created by yougmark on 12-7-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InformationToPush.h"
#import "PersonalInfo.h"
@interface User : NSObject
{
    PersonalInfo *personalInfo;
    InformationToPush *infomationToPush;
}
@property (nonatomic,strong) PersonalInfo *personalInfo;
@property (nonatomic,strong) InformationToPush *infomationToPush;
@end

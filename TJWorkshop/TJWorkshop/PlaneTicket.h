//
//  PlaneTicket.h
//  Ticheck
//
//  Created by yougmark on 12-7-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InformationToPush.h"
@interface PlaneTicket : InformationToPush
{
    NSCalendar* calendar;
    NSString* departureCity;
    NSString* arrivalCity;
}
@property (nonatomic,strong) NSCalendar *calendar;
@property (nonatomic,strong) NSString *departureCity;
@property (nonatomic,strong) NSString *arrivalCity;
-(void)updateInfomationToPush;
@end

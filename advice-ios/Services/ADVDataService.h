//
//  ADVDataService.h
//  advice-ios
//
//  Created by Michael Moser on 3/10/14.
//  Copyright (c) 2014 Michael Moser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ADVMessage.h"

@protocol DataServiceDelegate;

@interface ADVDataService : NSObject<NSURLConnectionDelegate>
@property id<DataServiceDelegate> delegate;
- (void) ask:(ADVMessage *)message;
@end

@protocol DataServiceDelegate<NSObject>
@required
- (void) askCompleted:(ADVMessage *)message;
@end
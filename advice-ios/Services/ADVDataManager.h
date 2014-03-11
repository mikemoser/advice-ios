//
//  ADVDataManager.h
//  advice-ios
//
//  Created by Michael Moser on 3/10/14.
//  Copyright (c) 2014 Michael Moser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ADVMessage.h"

@protocol DataManagerDelegate;

@interface ADVDataManager : NSObject<NSURLConnectionDelegate>
@property id<DataManagerDelegate> delegate;
- (void) ask:(ADVMessage *)message;
@end

@protocol DataManagerDelegate<NSObject>
@required
- (void) askCompleted:(ADVMessage *)message;
@end
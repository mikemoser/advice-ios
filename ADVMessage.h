//
//  ADVMessage.h
//  advice-ios
//
//  Created by Michael Moser on 3/10/14.
//  Copyright (c) 2014 Michael Moser. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADVMessage : NSObject

@property NSString *text;
- (NSDictionary *) serialize;
- (void) initWithData:(NSMutableData *)data;
@end

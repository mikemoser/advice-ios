//
//  ADVMessage.m
//  advice-ios
//
//  Created by Michael Moser on 3/10/14.
//  Copyright (c) 2014 Michael Moser. All rights reserved.
//

#import "ADVMessage.h"

@implementation ADVMessage

- (NSDictionary *) serialize {
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setValue:self.text forKey:@"text"];
    return dictionary;
}

- (void) initWithData: (NSMutableData *)data {
    NSError *jsonParsingError = nil;
    id parsedObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
    self.text = [parsedObject valueForKey:@"text"];
}

@end

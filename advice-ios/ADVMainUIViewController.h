//
//  ADVMainUIViewController.h
//  advice-ios
//
//  Created by Michael Moser on 3/10/14.
//  Copyright (c) 2014 Michael Moser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ADVDataManager.h"

@interface ADVMainUIViewController : UIViewController<DataManagerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *messageTextField;
@property (weak, nonatomic) IBOutlet UITextField *responseTextField;
@property (weak, nonatomic) IBOutlet UIButton *ask;
@end

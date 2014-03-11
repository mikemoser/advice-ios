//
//  ADVMainUIViewController.m
//  advice-ios
//
//  Created by Michael Moser on 3/10/14.
//  Copyright (c) 2014 Michael Moser. All rights reserved.
//

#import "ADVMainUIViewController.h"
#import "ADVDataService.h"
#import "ADVMessage.h"

@interface ADVMainUIViewController ()
@property ADVDataService *dataService;
@end

@implementation ADVMainUIViewController

@synthesize messageTextField;
@synthesize responseTextField;

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
    
	// Initialize a single instance of the dataService
    self.dataService = [[ADVDataService alloc] init];
    self.dataService.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ask:(id)sender {
    ADVMessage *message = [[ADVMessage alloc] init];
    message.text = messageTextField.text;
    
    [self.dataService ask:message];
}

- (void) askCompleted:(ADVMessage *)message {
    responseTextField.text = message.text;
}

@end

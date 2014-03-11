//
//  ADVMainUIViewController.m
//  advice-ios
//
//  Created by Michael Moser on 3/10/14.
//  Copyright (c) 2014 Michael Moser. All rights reserved.
//

#import "ADVMainUIViewController.h"
#import "ADVDataManager.h"
#import "ADVMessage.h"

@interface ADVMainUIViewController ()

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ask:(id)sender {
    ADVDataManager *dataManager = [[ADVDataManager alloc] init];
    dataManager.delegate = self;
    
    ADVMessage *message = [[ADVMessage alloc] init];
    message.text = messageTextField.text;
    
    [dataManager ask:message];
}

- (void) askCompleted:(ADVMessage *)message {
    responseTextField.text = message.text;
}

@end

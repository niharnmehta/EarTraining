//
//  ETTestViewController.m
//  EarTraining
//
//  Created by Nihar Mehta on 1/19/14.
//  Copyright (c) 2014 LinkedIn Corp. All rights reserved.
//

#import "ETTestViewController.h"
#import "ETMainViewController.h"

@implementation ETTestViewController

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
    // Do any additional setup after loading the view from its nib.

	// This is the simplest way to play a sound.
	// But note with System Sound services you can only use:
	// File Formats (a.k.a. audio containers or extensions): CAF, AIF, WAV
	// Data Formats (a.k.a. audio encoding): linear PCM (such as LEI16) or IMA4
	// Sounds must be 30 sec or less
	// And only one sound plays at a time!
	NSString *notePath = [[NSBundle mainBundle] pathForResource:@"note1001" ofType:@"m4a"];
	NSURL *noteURL = [NSURL fileURLWithPath:notePath];
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)noteURL, &_noteSound);
    // AudioServicesPlaySystemSound(_noteSound);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backToMain:(id)sender
{
    ETMainViewController *secondVc = [[ETMainViewController alloc] initWithNibName:@"ETMainViewController" bundle:nil];
    [self presentViewController:secondVc animated:YES completion:nil];
}

- (IBAction)playNotes:(id)sender
{
    AudioServicesPlaySystemSound(_noteSound);    
}

@end

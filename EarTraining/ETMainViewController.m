//
//  ETMainViewController.m
//  EarTraining
//
//  Created by Nihar Mehta on 1/19/14.
//  Copyright (c) 2014 LinkedIn Corp. All rights reserved.
//

#import "ETMainViewController.h"
#import "ETTestViewController.h"

@implementation ETMainViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) startTheTest:(id)sender
{
    ETTestViewController *secondVc = [[ETTestViewController alloc] initWithNibName:@"ETTestViewController" bundle:nil];
    [self presentViewController:secondVc animated:YES completion:nil];
}

@end

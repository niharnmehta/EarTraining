//
//  ETTestViewController.h
//  EarTraining
//
//  Created by Nihar Mehta on 1/19/14.
//  Copyright (c) 2014 LinkedIn Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ETTestViewController : UIViewController
{
    SystemSoundID _noteSound;
}

- (IBAction)backToMain:(id)sender;
- (IBAction)playNotes:(id)sender;

@end




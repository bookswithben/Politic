//
//  OutOfTime.m
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import "OutOfTime.h"

@implementation OutOfTime

-(void)outOfTime {
    if (count < 10) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.00 target:self selector:@selector(vibratePhone) userInfo:nil repeats:YES];
    }
}

- (void)vibratePhone {
    if (count < 10) {
        NSLog(@"%d", count);
        if([[UIDevice currentDevice].model isEqualToString:@"iPhone"])
        {
            AudioServicesPlaySystemSound (1352); // Vibration
        }
        else
        {
            // Not an iPhone, so doesn't have vibrate
            // play a tick noise instead
            AudioServicesPlayAlertSound (1105);
        }
    } else {
        [timer invalidate];
        timer = nil;
    }
    count++;
}

@end

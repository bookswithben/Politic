//
//  OutOfTime.h
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioServices.h>
#import "AVFoundation/AVFoundation.h"
#import "UIKit/UIKit.h"
@interface OutOfTime : NSObject {
    NSTimer *timer;
    int count;
}
- (void)outOfTime;
@end

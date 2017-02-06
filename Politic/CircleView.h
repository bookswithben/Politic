//
//  CircleView.h
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <POP/POP.h>
#import "UIColor+CustomColours.h"
@interface CircleView : UIView
@property(nonatomic) UIColor *strokeColor;

- (void)setStrokeEnd:(CGFloat)strokeEnd animated:(BOOL)animated;
@end

//
//  QuestionViewController.h
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+CustomColours.h"
#import "CircleView.h"
#import "OutOfTime.h"
#import "QuestionGeneratorUnit1.h"
#import "QuestionModelUnitOne.h"
#import "QuestionGeneratorUnitTwo.h"
#import "QuestionModelUnitTwo.h"

@interface QuestionViewController : UIViewController

@property UIColor *customColour;
@property NSUInteger buttonTag;
@property NSUInteger unitChoice;

@property NSTimer *timer;
@property int count;
@property int totalTime;
@property int seconds;
@property int minutes;
@property UILabel *question;
@property UILabel *timerLabel;
@property UILabel *amountOfMarksLabel;
@property UIButton *startTimer;
@property UIButton *reset;
@property BOOL buttonPressed;
@property CircleView *circleView;
@property NSDictionary *metrics;
@property UIButton *nextQuestion;
@property UIButton *returnButton;

@property int marksIndicator;

@property QuestionGeneratorUnit1 *questionGenerator;
@property QuestionGeneratorUnitTwo *questionGenerator2;

@property QuestionModelUnitTwo *questionModel2;
@property QuestionModelUnitOne *questionModel1;

@end

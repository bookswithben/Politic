//
//  QuestionViewController.m
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import "QuestionViewController.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

@synthesize customColour;
@synthesize buttonTag;

@synthesize timer;
@synthesize count;
@synthesize totalTime;
@synthesize seconds;
@synthesize minutes;
@synthesize question;
@synthesize timerLabel;
@synthesize amountOfMarksLabel;
@synthesize startTimer;
@synthesize reset;
@synthesize buttonPressed;
@synthesize circleView;
@synthesize metrics;
@synthesize nextQuestion;
@synthesize returnButton;
@synthesize marksIndicator;
@synthesize unitChoice;
@synthesize questionModel1;
@synthesize questionModel2;
@synthesize questionGenerator;
@synthesize questionGenerator2;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getColour];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


# pragma mark Setting Up View

-(void) setUp {
    [self setMarkAmountLabel];
    [self setQuestionLabel];
    [self setReturnButton];
    [self setNextQuestionButton];
    [self setPreviousQuestionButton];
    [self setTimer];
    [self setCircleView];
    [self setContraints];
}


-(void)setNextQuestionButton {
    nextQuestion = [UIButton buttonWithType:UIButtonTypeCustom];
    nextQuestion.translatesAutoresizingMaskIntoConstraints = NO;
    [nextQuestion addTarget:self action:@selector(getQuestion) forControlEvents:UIControlEventTouchUpInside];
    
    UIImage *btnImage = [UIImage imageNamed:@"nextQuestion"];
    [nextQuestion setImage:btnImage forState:UIControlStateNormal];
    [self.view addSubview:nextQuestion];
}

-(void)setQuestionLabel{
    question = [[UILabel alloc] init];
    question.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:15];
    question.textColor = [UIColor blackColor];
    question.numberOfLines = 0;
    question.textAlignment = NSTextAlignmentCenter;
    question.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self getQuestion];
    
    [self.view addSubview:question];
}

-(void)setReturnButton {
    returnButton = [UIButton buttonWithType:UIButtonTypeCustom];
    returnButton.translatesAutoresizingMaskIntoConstraints = NO;
    [returnButton setTitle:@"Menu" forState:UIControlStateNormal];
    [returnButton addTarget:self action:@selector(returnToMenu:) forControlEvents:UIControlEventTouchUpInside];
    returnButton.titleLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:21.0];
    //[returnButton setTitleColor:[UIColor customDarkerOrangeColor] forState:UIControlStateNormal];
    returnButton.backgroundColor = customColour;
    returnButton.layer.cornerRadius = 8;
    returnButton.clipsToBounds = YES;
    [self.view addSubview:returnButton];
}

-(void)setTimer{
    timerLabel = [[UILabel alloc ] init];
    timerLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:18];
    timerLabel.textColor = [UIColor blackColor];
    timerLabel.numberOfLines = 0;
    timerLabel.textAlignment = NSTextAlignmentCenter;
    timerLabel.translatesAutoresizingMaskIntoConstraints = NO;
    timerLabel.text = [NSString stringWithFormat:@"%.2d:%.2d", count/60, 0];
    [self.view addSubview:timerLabel];
    
    startTimer = [UIButton buttonWithType:UIButtonTypeCustom];
    startTimer.translatesAutoresizingMaskIntoConstraints = NO;
    [startTimer addTarget:self action:@selector(startStopTimer) forControlEvents:UIControlEventTouchUpInside];
    
    totalTime = count;
    
    UIImage *btnImage = [UIImage imageNamed:@"Play"];
    [startTimer setImage:btnImage forState:UIControlStateNormal];
    
    [self.view addSubview:startTimer];
}

-(void)setPreviousQuestionButton {
    reset = [UIButton buttonWithType:UIButtonTypeCustom];
    reset.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIImage *btnImage = [UIImage imageNamed:@"prevQuestion"];
    [reset setImage:btnImage forState:UIControlStateNormal];
    [reset addTarget:self action:@selector(resetTimer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:reset];
}

-(void)setMarkAmountLabel {
    amountOfMarksLabel = [[UILabel alloc ] init];
    amountOfMarksLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:15];
    amountOfMarksLabel.textColor = [UIColor blackColor];
    amountOfMarksLabel.textAlignment = NSTextAlignmentCenter;
    amountOfMarksLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:amountOfMarksLabel];
    
}

-(void)setContraints {
    NSDictionary *views = NSDictionaryOfVariableBindings(reset,timerLabel, startTimer, returnButton, amountOfMarksLabel, question, nextQuestion);
    metrics = @{@"sides":@50.0,@"verticalTops":@50.0, @"startTimer":@150.0, @"height":@60.0, @"timerLabelSide":@100.0, @"fromMarksToQuestion":@5.0, @"controlsHeight":@125.0};
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[nextQuestion]-sides-|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[nextQuestion(>=height)]-controlsHeight-|" options:0 metrics:metrics views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sides-[question]-sides-|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-verticalTops-[question(>=height)]" options:0 metrics:metrics views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sides-[amountOfMarksLabel]-sides-|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[question]-fromMarksToQuestion-[amountOfMarksLabel(>=height)]" options:0 metrics:metrics views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sides-[returnButton]-sides-|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[returnButton(>=height)]-verticalTops-|" options:0 metrics:metrics views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-startTimer-[startTimer]-startTimer-|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[startTimer(>=height)]-controlsHeight-|" options:0 metrics:metrics views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-timerLabelSide-[timerLabel]-timerLabelSide-|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-startTimer-[timerLabel(>=height)]-startTimer-|" options:0 metrics:metrics views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sides-[reset]" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[reset(>=height)]-controlsHeight-|" options:0 metrics:metrics views:views]];
}


# pragma mark Timer Methods
-(void)startStopTimer {
    if(!buttonPressed)  {
        UIImage *start = [UIImage imageNamed:@"Stop"];
        [startTimer setImage:start forState:UIControlStateNormal];
        
        if([timer isValid]) {
        } else {
            timer = [NSTimer scheduledTimerWithTimeInterval:1.00 target:self selector:@selector(timerFireMethod) userInfo:nil repeats:YES];
        }
        
        buttonPressed = YES;
    }
    else {
        [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
        UIImage *start = [UIImage imageNamed:@"Play"];
        [startTimer setImage:start forState:UIControlStateNormal];
        
        [timer invalidate];
        timer = nil;
        
        buttonPressed = NO;
    }
    
}

-(void)timerFireMethod {
    if (totalTime > 0) {
        [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
        [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
        totalTime = totalTime - 1;
        
        seconds = totalTime % 60;
        minutes = (totalTime - seconds) / 60;
        float percent = (float)totalTime/(float)count;
        
        [circleView setStrokeEnd:percent animated:NO];
        timerLabel.text = [NSString stringWithFormat:@"%.2d:%.2d", minutes, seconds];
    } else {
        OutOfTime *end = [[OutOfTime alloc] init];
        [end outOfTime];
        [timer invalidate];
        timer = nil;
        [self resetTimer];
    }
}

-(void)resetTimer{
    [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
    totalTime = count;
    UIImage *start = [UIImage imageNamed:@"Play"];
    [startTimer setImage:start forState:UIControlStateNormal];
    [circleView setStrokeEnd:1.0f animated:YES];
    buttonPressed = NO;
    [timer invalidate];
    timer = nil;
    timerLabel.text = [NSString stringWithFormat:@"%.2d:%.2d", totalTime/60, 0];
    
}


# pragma mark Question Methods

-(void)getQuestion {
    if(unitChoice == 1) {
        questionGenerator = [QuestionGeneratorUnit1 new];
        questionModel1 = [questionGenerator questionPicker:marksIndicator];
        
        [questionGenerator updateQuestion:questionModel1];
        NSString *questionText = [questionGenerator questionObjToString:questionModel1];
        [self getAmountOfMarks:questionGenerator questionModel:questionModel1];
        question.text = questionText;
        count = [questionGenerator getTimerValue:questionModel1];
        
        [self resetTimer];
    } else {
        questionGenerator2 = [QuestionGeneratorUnitTwo new];
        questionModel2 = [questionGenerator2 questionPicker:marksIndicator];
        
        [questionGenerator2 updateQuestion:questionModel2];
        NSString *questionText = [questionGenerator2 questionObjToString:questionModel2];
        [self getAmountOfMarks2:questionGenerator2 questionModel:questionModel2];
        question.text = questionText;
        count = [questionGenerator2 getTimerValue:questionModel2];
        
        [self resetTimer];
    }
}

-(void) getAmountOfMarks:(QuestionGeneratorUnit1*) questionObject questionModel:(QuestionModelUnitOne *)questionModel {
    amountOfMarksLabel.text = [questionObject getAmountOfMarks:questionModel];
}

-(void) getAmountOfMarks2:(QuestionGeneratorUnitTwo*) questionObject questionModel:(QuestionModelUnitTwo *)questionModel {
    amountOfMarksLabel.text = [questionObject getAmountOfMarks:questionModel];
}

# pragma mark Adding Circle View
- (void)setCircleView {
    
    CGRect frame = CGRectMake(0.0f, 0.0f, 200.0f, 200.0f);
    circleView = [[CircleView alloc] initWithFrame:frame];
    circleView.strokeColor = customColour;
    circleView.center = self.view.center;
    [self.view addSubview:circleView];
    [circleView setStrokeEnd:1.0f animated:NO];
}



# pragma mark Return to Menu
-(void)returnToMenu:(id)sender {
    [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
    [timer invalidate];
    timer = nil;
    [self dismissViewControllerAnimated:YES completion:^{}];
}



-(void)getColour{
    if ( buttonTag == 5) {
        customColour = [UIColor customRedColor];
        marksIndicator = 5;
    } else if (buttonTag == 10) {
        customColour = [UIColor customGreenColor];
        marksIndicator = 10;
    } else if (buttonTag == 25) {
        customColour = [UIColor customBlueColor];
        marksIndicator = 25;
    } else if (buttonTag == 40) {
        customColour = [UIColor customYellowColor];
        marksIndicator = 40;
    }else {
        customColour = [UIColor customOrangeColor];
        marksIndicator = 1;
    }
}
@end

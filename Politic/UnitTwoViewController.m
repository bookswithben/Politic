//
//  UnitTwoViewController.m
//  Politic
//
//  Created by Ben Bastow on 05/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import "UnitTwoViewController.h"

@interface UnitTwoViewController ()

@end

@implementation UnitTwoViewController

@synthesize marker5;
@synthesize marker10;
@synthesize marker25;
@synthesize marker40;
@synthesize markerRand;
@synthesize close;
@synthesize politics;
@synthesize unit1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUpView];
    [QuestionDataUnitTwo setUpData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Creating View

- (void)setMarker5Button {
    marker5 = [UIButton buttonWithType:UIButtonTypeCustom];
    [marker5 addTarget:self action:@selector(questionModal:) forControlEvents:UIControlEventTouchUpInside];
    marker5.titleLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:21.0];
    [marker5 setTitle:@"5 Marker" forState:UIControlStateNormal];
    marker5.backgroundColor = [UIColor customRedColor];
    marker5.translatesAutoresizingMaskIntoConstraints = NO;
    marker5.layer.cornerRadius = 10;
    marker5.clipsToBounds = YES;
    marker5.tag = 5;
    [self.view addSubview:marker5];
}

-(void)setMarker10Button {
    marker10 = [UIButton buttonWithType:UIButtonTypeCustom];
    [marker10 addTarget:self action:@selector(questionModal:) forControlEvents:UIControlEventTouchUpInside];
    marker10.titleLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:21.0];
    [marker10 setTitle:@"10 Marker" forState:UIControlStateNormal];
    marker10.backgroundColor = [UIColor customGreenColor];
    marker10.translatesAutoresizingMaskIntoConstraints = NO;
    marker10.layer.cornerRadius = 10;
    marker10.clipsToBounds = YES;
    marker10.tag = 10;
    [self.view addSubview:marker10];
}

-(void)setMarker25Button {
    marker25 = [UIButton buttonWithType:UIButtonTypeCustom];
    [marker25 addTarget:self action:@selector(questionModal:) forControlEvents:UIControlEventTouchUpInside];
    marker25.titleLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:21.0];
    [marker25 setTitle:@"25 Marker" forState:UIControlStateNormal];
    marker25.backgroundColor = [UIColor customBlueColor];
    marker25.translatesAutoresizingMaskIntoConstraints = NO;
    marker25.layer.cornerRadius = 10;
    marker25.clipsToBounds = YES;
    marker25.tag = 25;
    [self.view addSubview:marker25];
}

-(void)setMarker40Button {
    marker40 = [UIButton buttonWithType:UIButtonTypeCustom];
    [marker40 addTarget:self action:@selector(questionModal:) forControlEvents:UIControlEventTouchUpInside];
    marker40.titleLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:21.0];
    [marker40 setTitle:@"40 Marker" forState:UIControlStateNormal];
    marker40.backgroundColor = [UIColor customYellowColor];
    marker40.translatesAutoresizingMaskIntoConstraints = NO;
    marker40.layer.cornerRadius = 10;
    marker40.clipsToBounds = YES;
    marker40.tag = 40;
    [self.view addSubview:marker40];
}

-(void)setMarkerRandButton {
    markerRand = [UIButton buttonWithType:UIButtonTypeCustom];
    [markerRand addTarget:self action:@selector(questionModal:) forControlEvents:UIControlEventTouchUpInside];
    markerRand.titleLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:21.0];
    [markerRand setTitle:@"Random" forState:UIControlStateNormal];
    markerRand.backgroundColor = [UIColor customOrangeColor];
    markerRand.translatesAutoresizingMaskIntoConstraints = NO;
    markerRand.layer.cornerRadius = 10;
    markerRand.clipsToBounds = YES;
    markerRand.tag = 1;
    [self.view addSubview:markerRand];
}

-(void)setCloseButton {
    close = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *closeImage = [UIImage imageNamed:@"close"];
    [close setImage:closeImage forState:UIControlStateNormal];
    [close addTarget:self action:@selector(returnToMenu:) forControlEvents:UIControlEventTouchUpInside];
    close.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:close];
}

-(void)setUnit1Label {
    unit1 = [[UILabel alloc] init];
    unit1 = [[UILabel alloc] init];
    unit1.textColor = [UIColor blackColor];
    unit1.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:20.0];
    unit1.textAlignment = NSTextAlignmentCenter;
    unit1.translatesAutoresizingMaskIntoConstraints = NO;
    unit1.numberOfLines = 0;
    unit1.text = @"Unit 2";
    [self.view addSubview:unit1];
}

-(void)setPoliticsLabel {
    politics = [[UILabel alloc] init];
    politics.textColor = [UIColor blackColor];
    politics.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:20.0];
    politics.textAlignment = NSTextAlignmentCenter;
    politics.translatesAutoresizingMaskIntoConstraints = NO;
    politics.numberOfLines = 0;
    politics.text = @"Governing The UK";
    [self.view addSubview:politics];
}

- (void) addConstraints {
    
    // Removes All preset contraints
    [self.view removeConstraints:self.view.constraints];
    
    // NSDictionary of all UIElements & NSDictionary of the height's and widths of the contraints
    NSDictionary *views = NSDictionaryOfVariableBindings(marker5, marker10, marker25, markerRand, unit1, politics, close, marker40);
    
    NSDictionary *metrics = @{@"widthFromTop":@20.0,@"widthFromSides":@50.0, @"heightFromTextElement":@15.0, @"heightFromFirstlabelElement":@50.0, @"heightButton":@60.0, @"HeightLabelToLabel":@25.0, @"closeButton":@25, @"closeButtonVertical":@30};
    
    /*
     MARK: Constraints Width
     */
    
    NSArray *contraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-widthFromSides-[marker5]-widthFromSides-|" options:0 metrics:metrics views:views];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-widthFromSides-[unit1]-widthFromSides-|" options:0 metrics:metrics views:views]];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-widthFromSides-[politics]-widthFromSides-|" options:0 metrics:metrics views:views]];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-widthFromSides-[marker10]-widthFromSides-|" options:0 metrics:metrics views:views]];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-widthFromSides-[marker25]-widthFromSides-|" options:0 metrics:metrics views:views]];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-widthFromSides-[markerRand]-widthFromSides-|" options:0 metrics:metrics views:views]];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-widthFromSides-[marker40]-widthFromSides-|" options:0 metrics:metrics views:views]];
    
    /*
     MARK: Constraints Height
     */
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-widthFromTop-[unit1]-heightFromTextElement-[politics]-heightFromFirstlabelElement-[marker5(>=heightButton)]-HeightLabelToLabel-[marker10(>=heightButton)]-HeightLabelToLabel-[marker25(>=heightButton)]-HeightLabelToLabel-[marker40(>=heightButton)]-HeightLabelToLabel-[markerRand(>=heightButton)]" options:0 metrics:metrics views:views]];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-closeButton-[close]" options:0 metrics:metrics views:views]];
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-closeButtonVertical-[close]" options:0 metrics:metrics views:views]];
    
    
    
    // Adding the contraints to view
    [self.view addConstraints:contraints];
}

-(void)setUpView {
    [self setMarker5Button];
    [self setMarker10Button];
    [self setMarker25Button];
    [self setMarkerRandButton];
    [self setCloseButton];
    [self setUnit1Label];
    [self setPoliticsLabel];
    [self setMarker40Button];
    [self addConstraints];
}

- (void) questionModal:(UIButton *)sender {
    QuestionViewController *modalViewController = [QuestionViewController new];
    modalViewController.buttonTag = sender.tag;
    modalViewController.unitChoice = 2;
    [self presentViewController:modalViewController animated:YES completion:^{}];
}

-(void)returnToMenu:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}



@end

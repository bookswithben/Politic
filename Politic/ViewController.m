//
//  ViewController.m
//  Politic
//
//  Created by Ben Bastow on 03/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize politics;
@synthesize unit1;
@synthesize unit2;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUp];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Setters/Creating View;

-(void) setUnit1Button {
    unit1 = [UIButton buttonWithType:UIButtonTypeCustom];
    unit1.backgroundColor = [UIColor customGreenColor];
    unit1.titleLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:20.0];
    [unit1 setTitle:@"Unit 1" forState:UIControlStateNormal];
    unit1.translatesAutoresizingMaskIntoConstraints = NO;
    unit1.clipsToBounds = YES;
    unit1.layer.cornerRadius = 10;
    
    [unit1 addTarget:self action:@selector(openUnit1ViewController) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:unit1];
}

-(void) setUnit2Button{
    unit2 = [UIButton buttonWithType:UIButtonTypeCustom];
    unit2.backgroundColor = [UIColor customRedColor];
    unit2.titleLabel.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:20.0];
    [unit2 setTitle:@"Unit 2" forState:UIControlStateNormal];
    unit2.translatesAutoresizingMaskIntoConstraints = NO;
    unit2.clipsToBounds = YES;
    unit2.layer.cornerRadius = 10;
    
    [unit2 addTarget:self action:@selector(openUnit2ViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:unit2];
}

-(void) setPoliticsLabel{
    politics = [[UILabel alloc]init];
    politics.textColor = [UIColor blackColor];
    politics.font = [UIFont fontWithName:@"Nunito-ExtraBold" size:20.0];
    politics.textAlignment = NSTextAlignmentCenter;
    politics.translatesAutoresizingMaskIntoConstraints = NO;
    politics.numberOfLines = 0;
    politics.text = @"AS Edexcel Government & Politics";
    [self.view addSubview:politics];
}

-(void)addContraints {
    [self.view removeConstraints:self.view.constraints];
    NSDictionary *views = NSDictionaryOfVariableBindings(unit1, unit2, politics);
    NSDictionary *metrics = @{@"sides":@50, @"height":@100, @"politicsVerticalHeight":@50, @"fromPolitics":@125, @"fromUnit1":@50};
    
    NSArray *contraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sides-[politics]-sides-|" options:0 metrics:metrics views:views];
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-politicsVerticalHeight-[politics]" options:0 metrics:metrics views:views]];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sides-[unit1]-sides-|" options:0 metrics:metrics views:views]];
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"V:[politics]-fromPolitics-[unit1(>=height)]" options:0 metrics:metrics views:views]];
    
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sides-[unit2]-sides-|" options:0 metrics:metrics views:views]];
    contraints = [contraints arrayByAddingObjectsFromArray: [NSLayoutConstraint constraintsWithVisualFormat:@"V:[unit1]-fromUnit1-[unit2(>=height)]" options:0 metrics:metrics views:views]];
    
    [self.view addConstraints:contraints];
}

-(void)openUnit1ViewController {
    UnitOneViewController *unit1ViewController = [UnitOneViewController new];
    [self presentViewController:unit1ViewController animated:YES completion:^{}];
}

-(void)openUnit2ViewController {
    UnitTwoViewController *unit2ViewController = [UnitTwoViewController new];
    [self presentViewController:unit2ViewController animated:YES completion:^{}];
}


-(void)setUp {
    [self setUnit1Button];
    [self setUnit2Button];
    [self setPoliticsLabel];
    [self addContraints];
}

@end

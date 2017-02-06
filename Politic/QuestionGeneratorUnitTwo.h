//
//  QuestionGeneratorUnitTwo.h
//  Politic
//
//  Created by Ben Bastow on 05/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionModelUnitTwo.h"

@interface QuestionGeneratorUnitTwo : NSObject
-(QuestionModelUnitTwo*)questionPicker:(int)amount;
-(NSString*)questionObjToString:(QuestionModelUnitTwo*)questionObject;
-(NSString*)getAmountOfMarks:(QuestionModelUnitTwo*)questionObject;
-(void)updateQuestion:(QuestionModelUnitTwo*)questionModel;
-(int)getTimerValue:(QuestionModelUnitTwo*)questionModel;
-(void)reset5Marker;
-(void)reset10Marker;
-(void)reset25Marker;
-(void)resetAllQuestions;
@end

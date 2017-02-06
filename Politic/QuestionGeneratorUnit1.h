//
//  QuestionGeneratorUnit1.h
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionModelUnitOne.h"

@interface QuestionGeneratorUnit1 : NSObject
-(QuestionModelUnitOne*)questionPicker:(int)amount;
-(NSString*)questionObjToString:(QuestionModelUnitOne*)questionObject;
-(NSString*)getAmountOfMarks:(QuestionModelUnitOne*)questionObject;
-(void)updateQuestion:(QuestionModelUnitOne*)questionModel;
-(int)getTimerValue:(QuestionModelUnitOne*)questionModel;
-(void)reset5Marker;
-(void)reset10Marker;
-(void)reset25Marker;
-(void)resetAllQuestions;
@end

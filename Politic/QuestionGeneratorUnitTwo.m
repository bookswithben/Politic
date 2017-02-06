//
//  QuestionGeneratorUnitTwo.m
//  Politic
//
//  Created by Ben Bastow on 05/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import "QuestionGeneratorUnitTwo.h"

@implementation QuestionGeneratorUnitTwo
-(NSString*)questionObjToString:(QuestionModelUnitTwo*)questionObject{
    return questionObject.question;
}

-(QuestionModelUnitTwo*)questionPicker:(int)amount {
    if (amount == 5) {
        RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 5 AND seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self reset5Marker];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitTwo *> *questionsReset = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 5 AND seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitTwo *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitTwo *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
    } else if (amount == 10) {
        RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 10 AND seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self reset10Marker];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitTwo *> *questionsReset = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 10 AND seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitTwo *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitTwo *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
        
        
    } else if (amount == 25) {
        RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 25 AND seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self reset25Marker];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitTwo *> *questionsReset = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 25 AND seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitTwo *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitTwo *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
    }else if (amount == 40) {
        RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 40 AND seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self reset40Marker];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitTwo *> *questionsReset = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 40 AND seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitTwo *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitTwo *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
    } else {
        RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self resetAllQuestions];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitTwo *> *questionsReset = [QuestionModelUnitTwo objectsWhere:@"seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitTwo *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitTwo *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
    }
}

-(void)reset5Marker{
    RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 5 AND seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitTwo *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(void)reset10Marker{
    RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 10 AND seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitTwo *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(void)reset25Marker{
    RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 25 AND seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitTwo *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(void)reset40Marker{
    RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"amountOfMarks = 40 AND seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitTwo *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(void)resetAllQuestions{
    RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo objectsWhere:@"seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitTwo *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(int)getTimerValue:(QuestionModelUnitTwo*)questionModel {
    return ((int)questionModel.amountOfMarks * 60);
}

-(NSString*)getAmountOfMarks:(QuestionModelUnitTwo*)questionObject {
    return [NSString stringWithFormat:@"[%ld Marks]",(long)questionObject.amountOfMarks];
}


-(void)updateQuestion:(QuestionModelUnitTwo*)questionModel{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    questionModel.seenBefore = YES;
    [realm addOrUpdateObject:questionModel];
    [realm commitWriteTransaction];
}

@end


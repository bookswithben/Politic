//
//  QuestionGeneratorUnit1.m
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import "QuestionGeneratorUnit1.h"

@implementation QuestionGeneratorUnit1

-(NSString*)questionObjToString:(QuestionModelUnitOne*)questionObject{
    return questionObject.question;
}

-(QuestionModelUnitOne*)questionPicker:(int)amount {
    if (amount == 5) {
        RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 5 AND seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self reset5Marker];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitOne *> *questionsReset = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 5 AND seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitOne *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitOne *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
    } else if (amount == 10) {
        RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 10 AND seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self reset10Marker];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitOne *> *questionsReset = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 10 AND seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitOne *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitOne *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
        
        
    } else if (amount == 25) {
        RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 25 AND seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self reset25Marker];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitOne *> *questionsReset = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 25 AND seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitOne *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitOne *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
    } else {
        RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne objectsWhere:@"seenBefore = NO"];
        
        NSUInteger questionCount = questions.count;
        
        if (questionCount == 0) {
            [self resetAllQuestions];
            NSLog(@"Reset!");
            
            RLMResults<QuestionModelUnitOne *> *questionsReset = [QuestionModelUnitOne objectsWhere:@"seenBefore = NO"];
            NSUInteger questionCountReset = questionsReset.count;
            NSUInteger randomIndexReset = arc4random() % questionCountReset;
            QuestionModelUnitOne *questionModel = [questionsReset objectAtIndex:randomIndexReset];
            return questionModel;
        } else {
            NSUInteger randomIndex = arc4random() % questionCount;
            QuestionModelUnitOne *questionModel = [questions objectAtIndex:randomIndex];
            return questionModel;
        }
        
    }
}

-(void)reset5Marker{
    RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 5 AND seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitOne *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(void)reset10Marker{
    RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 10 AND seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitOne *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(void)reset25Marker{
    RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne objectsWhere:@"amountOfMarks = 25 AND seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitOne *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(void)resetAllQuestions{
    RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne objectsWhere:@"seenBefore = YES"];
    RLMRealm *realm = [RLMRealm defaultRealm];
    NSUInteger questionCount = questions.count;
    for (int x = 0; x < (questionCount); x++) {
        [realm beginWriteTransaction];
        QuestionModelUnitOne *questionModel = [questions objectAtIndex:0];
        questionModel.seenBefore = NO;
        
        [realm addOrUpdateObject:questionModel];
        [realm commitWriteTransaction];
    }
}

-(int)getTimerValue:(QuestionModelUnitOne*)questionModel {
    return ((int)questionModel.amountOfMarks * 60);
}

-(NSString*)getAmountOfMarks:(QuestionModelUnitOne*)questionObject {
    return [NSString stringWithFormat:@"[%ld Marks]",(long)questionObject.amountOfMarks];
}


-(void)updateQuestion:(QuestionModelUnitOne*)questionModel{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    questionModel.seenBefore = YES;
    [realm addOrUpdateObject:questionModel];
    [realm commitWriteTransaction];
}

@end


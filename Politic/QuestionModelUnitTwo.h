//
//  QuestionModelUnitTwo.h
//  Politic
//
//  Created by Ben Bastow on 05/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import <Realm/Realm.h>

@interface QuestionModelUnitTwo : RLMObject
@property NSInteger primary_key;
@property NSString *question;
@property NSInteger amountOfMarks;
@property BOOL seenBefore;
@property NSInteger year;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<QuestionModelUnitTwo *><QuestionModelUnitTwo>
RLM_ARRAY_TYPE(QuestionModelUnitTwo)

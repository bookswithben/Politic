//
//  QuestionModelUnitOne.h
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import <Realm/Realm.h>

@interface QuestionModelUnitOne : RLMObject
@property NSInteger primary_key;
@property NSString *question;
@property NSInteger amountOfMarks;
@property BOOL seenBefore;
@property NSInteger year;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<QuestionModelUnitOne *><QuestionModelUnitOne>
RLM_ARRAY_TYPE(QuestionModelUnitOne)

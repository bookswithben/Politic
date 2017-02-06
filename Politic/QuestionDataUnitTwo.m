//
//  QuestionDataUnitTwo.m
//  Politic
//
//  Created by Ben Bastow on 05/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import "QuestionDataUnitTwo.h"

@implementation QuestionDataUnitTwo
+(void)setUpData {
    RLMResults<QuestionModelUnitTwo *> *questions = [QuestionModelUnitTwo allObjects];
    NSUInteger questionCount = questions.count;
    if (questionCount == 0) {
        QuestionModelUnitTwo * quest0 = [[QuestionModelUnitTwo alloc] init];
        quest0.amountOfMarks = 5;
        quest0.question = @"Describe three of the sources which make up the UK constitution";
        quest0.seenBefore = NO;
        quest0.year = 2015;
        quest0.primary_key = 0;
        
        QuestionModelUnitTwo * quest1 = [[QuestionModelUnitTwo alloc] init];
        quest1.amountOfMarks = 10;
        quest1.question = @"Explain the features of parliamentary sovereignty";
        quest1.seenBefore = NO;
        quest1.year = 2015;
        quest1.primary_key = 1;
        
        QuestionModelUnitTwo * quest2 = [[QuestionModelUnitTwo alloc] init];
        quest2.amountOfMarks = 25;
        quest2.question = @"To what extent does Parliament remain sovereign?";
        quest2.seenBefore = NO;
        quest2.year = 2015;
        quest2.primary_key = 2;
        
        QuestionModelUnitTwo * quest3 = [[QuestionModelUnitTwo alloc] init];
        quest3.amountOfMarks = 5;
        quest3.question = @"Describe three civil liberties in the UK";
        quest3.seenBefore = NO;
        quest3.year = 2015;
        quest3.primary_key = 3;
        
        QuestionModelUnitTwo * quest4 = [[QuestionModelUnitTwo alloc] init];
        quest4.amountOfMarks = 10;
        quest4.question = @"Explain how and why governments have restricted civil liberties in recent years";
        quest4.seenBefore = NO;
        quest4.year = 2015;
        quest4.primary_key = 4;
        
        QuestionModelUnitTwo * quest5 = [[QuestionModelUnitTwo alloc] init];
        quest5.amountOfMarks = 25;
        quest5.question = @"How effectively do judges protect civil liberties in the UK?";
        quest5.seenBefore = NO;
        quest5.year = 2015;
        quest5.primary_key = 5;
        
        QuestionModelUnitTwo * quest6 = [[QuestionModelUnitTwo alloc] init];
        quest6.amountOfMarks = 5;
        quest6.question = @"Outline why the UK constitution is easy to change.";
        quest6.seenBefore = NO;
        quest6.year = 2014;
        quest6.primary_key = 6;
        
        QuestionModelUnitTwo * quest7 = [[QuestionModelUnitTwo alloc] init];
        quest7.amountOfMarks = 10;
        quest7.question = @"Explain how an uncodified constitution differs from a codified constitution";
        quest7.seenBefore = NO;
        quest7.year = 2014;
        quest7.primary_key = 7;
        
        QuestionModelUnitTwo * quest8 = [[QuestionModelUnitTwo alloc] init];
        quest8.amountOfMarks = 25;
        quest8.question = @" Assess the significance of the constitutional reforms introduced since 1997";
        quest8.seenBefore = NO;
        quest8.year = 2014;
        quest8.primary_key = 8;
        
        QuestionModelUnitTwo * quest9 = [[QuestionModelUnitTwo alloc] init];
        quest9.amountOfMarks = 5;
        quest9.question = @"What is a government reshuffle?";
        quest9.seenBefore = NO;
        quest9.year = 2014;
        quest9.primary_key = 9;
        
        QuestionModelUnitTwo * quest10 = [[QuestionModelUnitTwo alloc] init];
        quest10.amountOfMarks = 10;
        quest10.question = @"Explain the factors a prime minister considers when appointing or dismissing ministers";
        quest10.seenBefore = NO;
        quest10.year = 2014;
        quest10.primary_key = 10;
        
        QuestionModelUnitTwo * quest11 = [[QuestionModelUnitTwo alloc] init];
        quest11.amountOfMarks = 25;
        quest11.question = @"To what extent do prime ministers control the decisions made by their government?";
        quest11.seenBefore = NO;
        quest11.year = 2014;
        quest11.primary_key = 11;
        
        QuestionModelUnitTwo * quest12 = [[QuestionModelUnitTwo alloc] init];
        quest12.amountOfMarks = 5;
        quest12.question = @"Outline two features of the UK constitution";
        quest12.seenBefore = NO;
        quest12.year = 2013;
        quest12.primary_key = 12;
        
        QuestionModelUnitTwo * quest13 = [[QuestionModelUnitTwo alloc] init];
        quest13.amountOfMarks = 10;
        quest13.question = @"Explain the sources of the UK constitution";
        quest13.seenBefore = NO;
        quest13.year = 2013;
        quest13.primary_key = 13;
        
        QuestionModelUnitTwo * quest14 = [[QuestionModelUnitTwo alloc] init];
        quest14.amountOfMarks = 25;
        quest14.question = @"Assess the strengths of the UK’s uncodified constitution";
        quest14.seenBefore = NO;
        quest14.year = 2013;
        quest14.primary_key = 14;
        
        QuestionModelUnitTwo * quest15 = [[QuestionModelUnitTwo alloc] init];
        quest15.amountOfMarks = 5;
        quest15.question = @"Outline why the increasing exercise of judicial review is controversial";
        quest15.seenBefore = NO;
        quest15.year = 2013;
        quest15.primary_key = 15;
        
        QuestionModelUnitTwo * quest16 = [[QuestionModelUnitTwo alloc] init];
        quest16.amountOfMarks = 10;
        quest16.question = @"Explain the main effects of the Human Rights Act";
        quest16.seenBefore = NO;
        quest16.year = 2013;
        quest16.primary_key = 16;
        
        QuestionModelUnitTwo * quest17 = [[QuestionModelUnitTwo alloc] init];
        quest17.amountOfMarks = 25;
        quest17.question = @"Should judges, rather than politicians, be responsible for protecting civil liberties?";
        quest17.seenBefore = NO;
        quest17.year = 2013;
        quest17.primary_key = 17;
        
        QuestionModelUnitTwo * quest18 = [[QuestionModelUnitTwo alloc] init];
        quest18.amountOfMarks = 5;
        quest18.question = @"Describe how the introduction of fixed-term Parliaments has affected prime ministerial power";
        quest18.seenBefore = NO;
        quest18.year = 2013;
        quest18.primary_key = 18;
        
        QuestionModelUnitTwo * quest19 = [[QuestionModelUnitTwo alloc] init];
        quest19.amountOfMarks = 10;
        quest19.question = @"Explain three reforms, other than fixed-term Parliaments, which could limit the powers of the prime minister";
        quest19.seenBefore = NO;
        quest19.year = 2013;
        quest19.primary_key = 19;
        
        QuestionModelUnitTwo * quest20 = [[QuestionModelUnitTwo alloc] init];
        quest20.amountOfMarks = 25;
        quest20.question = @"To what extent have UK prime ministers become more ‘presidential’?";
        quest20.seenBefore = NO;
        quest20.year = 2013;
        quest20.primary_key = 20;
        
        QuestionModelUnitTwo * quest21 = [[QuestionModelUnitTwo alloc] init];
        quest21.amountOfMarks = 5;
        quest21.question = @"Outline two criticisms of David Cameron’s appointments to the House of Lords";
        quest21.seenBefore = NO;
        quest21.year = 2013;
        quest21.primary_key = 21;
        
        QuestionModelUnitTwo * quest22 = [[QuestionModelUnitTwo alloc] init];
        quest22.amountOfMarks = 10;
        quest22.question = @"Explain three considerations that are taken into account when appointing Life Peers";
        quest22.seenBefore = NO;
        quest22.year = 2013;
        quest22.primary_key = 22;
        
        QuestionModelUnitTwo * quest23 = [[QuestionModelUnitTwo alloc] init];
        quest23.amountOfMarks = 25;
        quest23.question = @"Assess the arguments in favour of a largely or wholly elected second chamber";
        quest23.seenBefore = NO;
        quest23.year = 2013;
        quest23.primary_key = 23;
        
        QuestionModelUnitTwo * quest24 = [[QuestionModelUnitTwo alloc] init];
        quest24.amountOfMarks = 5;
        quest24.question = @"Outline how coalition government has affected appointments to the Cabinet";
        quest24.seenBefore = NO;
        quest24.year = 2012;
        quest24.primary_key = 24;
        
        QuestionModelUnitTwo * quest25 = [[QuestionModelUnitTwo alloc] init];
        quest25.amountOfMarks = 10;
        quest25.question = @"Explain why collective responsibility is an important aspect of UK government";
        quest25.seenBefore = NO;
        quest25.year = 2012;
        quest25.primary_key = 25;
        
        QuestionModelUnitTwo * quest26 = [[QuestionModelUnitTwo alloc] init];
        quest26.amountOfMarks = 25;
        quest26.question = @"How important is the Cabinet?";
        quest26.seenBefore = NO;
        quest26.year = 2012;
        quest26.primary_key = 26;
        
        QuestionModelUnitTwo * quest27 = [[QuestionModelUnitTwo alloc] init];
        quest27.amountOfMarks = 5;
        quest27.question = @"Outline two constitutional reforms proposed by David Miliband";
        quest27.seenBefore = NO;
        quest27.year = 2012;
        quest27.primary_key = 27;
        
        QuestionModelUnitTwo * quest28 = [[QuestionModelUnitTwo alloc] init];
        quest28.amountOfMarks = 10;
        quest28.question = @"Explain the arguments in favour of introducing a codified constitution";
        quest28.seenBefore = NO;
        quest28.year = 2012;
        quest28.primary_key = 28;
        
        QuestionModelUnitTwo * quest29 = [[QuestionModelUnitTwo alloc] init];
        quest29.amountOfMarks = 25;
        quest29.question = @"To what extent have the coalition government’s proposals to reform the UK constitution been controversial";
        quest29.seenBefore = NO;
        quest29.year = 2012;
        quest29.primary_key = 29;
        
        QuestionModelUnitTwo * quest30 = [[QuestionModelUnitTwo alloc] init];
        quest30.amountOfMarks = 5;
        quest30.question = @"Why are legislative committees needed?";
        quest30.seenBefore = NO;
        quest30.year = 2012;
        quest30.primary_key = 30;
        
        QuestionModelUnitTwo * quest31 = [[QuestionModelUnitTwo alloc] init];
        quest31.amountOfMarks = 10;
        quest31.question = @"Explain the ways in which backbench MPs can call government to account";
        quest31.seenBefore = NO;
        quest31.year = 2012;
        quest31.primary_key = 31;
        
        QuestionModelUnitTwo * quest32 = [[QuestionModelUnitTwo alloc] init];
        quest32.amountOfMarks = 25;
        quest32.question = @"To what extent has the formation of a coalition altered the relationship between parliament and government?";
        quest32.seenBefore = NO;
        quest32.year = 2012;
        quest32.primary_key = 32;
        
        QuestionModelUnitTwo * quest33 = [[QuestionModelUnitTwo alloc] init];
        quest33.amountOfMarks = 5;
        quest33.question = @"What is the rule of law?";
        quest33.seenBefore = NO;
        quest33.year = 2012;
        quest33.primary_key = 33;
        
        QuestionModelUnitTwo * quest34 = [[QuestionModelUnitTwo alloc] init];
        quest34.amountOfMarks = 10;
        quest34.question = @"Explain how the independence of the judiciary is guaranteed";
        quest34.seenBefore = NO;
        quest34.year = 2012;
        quest34.primary_key = 34;
        
        QuestionModelUnitTwo * quest35 = [[QuestionModelUnitTwo alloc] init];
        quest35.amountOfMarks = 25;
        quest35.question = @"To what extent can judges check the power of the executive and the legislature?";
        quest35.seenBefore = NO;
        quest35.year = 2012;
        quest35.primary_key = 35;
        
        QuestionModelUnitTwo * quest36 = [[QuestionModelUnitTwo alloc] init];
        quest36.amountOfMarks = 5;
        quest36.question = @"Why was the government criticised over the decision to freeze the assets of the suspected terrorists?";
        quest36.seenBefore = NO;
        quest36.year = 2011;
        quest36.primary_key = 36;
        
        QuestionModelUnitTwo * quest37 = [[QuestionModelUnitTwo alloc] init];
        quest37.amountOfMarks = 10;
        quest37.question = @"Explain judicial review and its importance";
        quest37.seenBefore = NO;
        quest37.year = 2011;
        quest37.primary_key = 37;
        
        QuestionModelUnitTwo * quest38 = [[QuestionModelUnitTwo alloc] init];
        quest38.amountOfMarks = 25;
        quest38.question = @"To what extent is there conflict between the judiciary and the executive in the UK?";
        quest38.seenBefore = NO;
        quest38.year = 2011;
        quest38.primary_key = 38;
        
        QuestionModelUnitTwo * quest39 = [[QuestionModelUnitTwo alloc] init];
        quest39.amountOfMarks = 5;
        quest39.question = @"Describe three proposals that seek to strengthen parliamentary representation by increasing popular participation";
        quest39.seenBefore = NO;
        quest39.year = 2011;
        quest39.primary_key = 39;
        
        QuestionModelUnitTwo * quest40 = [[QuestionModelUnitTwo alloc] init];
        quest40.amountOfMarks = 10;
        quest40.question = @"Explain how three of these proposals seek to make government more accountable to parliament";
        quest40.seenBefore = NO;
        quest40.year = 2011;
        quest40.primary_key = 40;
        
        QuestionModelUnitTwo * quest41 = [[QuestionModelUnitTwo alloc] init];
        quest41.amountOfMarks = 25;
        quest41.question = @"To what extent will the coalition government’s proposals bring about an effective reform of parliament?";
        quest41.seenBefore = NO;
        quest41.year = 2011;
        quest41.primary_key = 41;
        
        QuestionModelUnitTwo * quest42 = [[QuestionModelUnitTwo alloc] init];
        quest42.amountOfMarks = 5;
        quest42.question = @"Describe two functions of the House of Commons";
        quest42.seenBefore = NO;
        quest42.year = 2011;
        quest42.primary_key = 42;
        
        QuestionModelUnitTwo * quest43 = [[QuestionModelUnitTwo alloc] init];
        quest43.amountOfMarks = 10;
        quest43.question = @"Explain how the House of Commons can control the power of government";
        quest43.seenBefore = NO;
        quest43.year = 2011;
        quest43.primary_key = 43;
        
        QuestionModelUnitTwo * quest44 = [[QuestionModelUnitTwo alloc] init];
        quest44.amountOfMarks = 25;
        quest44.question = @"To what extent is the House of Commons effective in carrying out its various functions?";
        quest44.seenBefore = NO;
        quest44.year = 2011;
        quest44.primary_key = 44;
        
        QuestionModelUnitTwo * quest45 = [[QuestionModelUnitTwo alloc] init];
        quest45.amountOfMarks = 5;
        quest45.question = @"Describe two limitations on prime ministerial power";
        quest45.seenBefore = NO;
        quest45.year = 2011;
        quest45.primary_key = 45;
        
        QuestionModelUnitTwo * quest46 = [[QuestionModelUnitTwo alloc] init];
        quest46.amountOfMarks = 10;
        quest46.question = @"Explain the prime minister’s prerogative powers";
        quest46.seenBefore = NO;
        quest46.year = 2011;
        quest46.primary_key = 46;
        
        QuestionModelUnitTwo * quest47 = [[QuestionModelUnitTwo alloc] init];
        quest47.amountOfMarks = 25;
        quest47.question = @"To what extent can the Prime Minister control the Cabinet?";
        quest47.seenBefore = NO;
        quest47.year = 2011;
        quest47.primary_key = 47;
        
        QuestionModelUnitTwo * quest48 = [[QuestionModelUnitTwo alloc] init];
        quest48.amountOfMarks = 5;
        quest48.question = @"Describe three sources of the UK constitution";
        quest48.seenBefore = NO;
        quest48.year = 2010;
        quest48.primary_key = 48;
        
        QuestionModelUnitTwo * quest49 = [[QuestionModelUnitTwo alloc] init];
        quest49.amountOfMarks = 10;
        quest49.question = @"Explain the arguments in favour of a codified constitution for the UK";
        quest49.seenBefore = NO;
        quest49.year = 2010;
        quest49.primary_key = 49;
        
        QuestionModelUnitTwo * quest50 = [[QuestionModelUnitTwo alloc] init];
        quest50.amountOfMarks = 25;
        quest50.question = @"Make out a case against the adoption of a codified constitution for the UK";
        quest50.seenBefore = NO;
        quest50.year = 2010;
        quest50.primary_key = 50;
        
        QuestionModelUnitTwo * quest51 = [[QuestionModelUnitTwo alloc] init];
        quest51.amountOfMarks = 5;
        quest51.question = @"Describe two types of issues discussed by the Cabinet";
        quest51.seenBefore = NO;
        quest51.year = 2010;
        quest51.primary_key = 51;
        
        QuestionModelUnitTwo * quest52 = [[QuestionModelUnitTwo alloc] init];
        quest52.amountOfMarks = 10;
        quest52.question = @"What factors does the Prime Minister take into account when appointing cabinet ministers?";
        quest52.seenBefore = NO;
        quest52.year = 2010;
        quest52.primary_key = 52;
        
        QuestionModelUnitTwo * quest53 = [[QuestionModelUnitTwo alloc] init];
        quest53.amountOfMarks = 25;
        quest53.question = @"To what extent is the Cabinet an important body?";
        quest53.seenBefore = NO;
        quest53.year = 2010;
        quest53.primary_key = 53;
        
        QuestionModelUnitTwo * quest54 = [[QuestionModelUnitTwo alloc] init];
        quest54.amountOfMarks = 5;
        quest54.question = @"Describe the measures that exist to maintain the independence and neutrality of the judiciary";
        quest54.seenBefore = NO;
        quest54.year = 2010;
        quest54.primary_key = 54;
        
        QuestionModelUnitTwo * quest55 = [[QuestionModelUnitTwo alloc] init];
        quest55.amountOfMarks = 10;
        quest55.question = @"Explain how the judiciary has been reformed since 2005";
        quest55.seenBefore = NO;
        quest55.year = 2010;
        quest55.primary_key = 55;
        
        QuestionModelUnitTwo * quest56 = [[QuestionModelUnitTwo alloc] init];
        quest56.amountOfMarks = 25;
        quest56.question = @"To what extent are UK judges both independent and neutral?";
        quest56.seenBefore = NO;
        quest56.year = 2010;
        quest56.primary_key = 56;
        
        QuestionModelUnitTwo * quest57 = [[QuestionModelUnitTwo alloc] init];
        quest57.amountOfMarks = 5;
        quest57.question = @"What changes to the second chamber are proposed?";
        quest57.seenBefore = NO;
        quest57.year = 2010;
        quest57.primary_key = 57;
        
        QuestionModelUnitTwo * quest58 = [[QuestionModelUnitTwo alloc] init];
        quest58.amountOfMarks = 10;
        quest58.question = @"Explain the arguments for a fully or partly elected second chamber";
        quest58.seenBefore = NO;
        quest58.year = 2010;
        quest58.primary_key = 58;
        
        QuestionModelUnitTwo * quest59 = [[QuestionModelUnitTwo alloc] init];
        quest59.amountOfMarks = 25;
        quest59.question = @"Make out a case against an elected second chamber";
        quest59.seenBefore = NO;
        quest59.year = 2010;
        quest59.primary_key = 59;
        
        QuestionModelUnitTwo * quest60 = [[QuestionModelUnitTwo alloc] init];
        quest60.amountOfMarks = 5;
        quest60.question = @"Describe three functions of Parliament";
        quest60.seenBefore = NO;
        quest60.year = 2009;
        quest60.primary_key = 60;
        
        QuestionModelUnitTwo * quest61 = [[QuestionModelUnitTwo alloc] init];
        quest61.amountOfMarks = 10;
        quest61.question = @"Explain why government needs an effective Parliament";
        quest61.seenBefore = NO;
        quest61.year = 2009;
        quest61.primary_key = 61;
        
        QuestionModelUnitTwo * quest62 = [[QuestionModelUnitTwo alloc] init];
        quest62.amountOfMarks = 25;
        quest62.question = @"Analyse the main factors that limit the effectiveness of Parliament";
        quest62.seenBefore = NO;
        quest62.year = 2009;
        quest62.primary_key = 62;
        
        QuestionModelUnitTwo * quest63 = [[QuestionModelUnitTwo alloc] init];
        quest63.amountOfMarks = 5;
        quest63.question = @"Outline the reasons Gordon Brown gives for proposing that prime ministerial powers be surrendered or limited";
        quest63.seenBefore = NO;
        quest63.year = 2009;
        quest63.primary_key = 63;
        
        QuestionModelUnitTwo * quest64 = [[QuestionModelUnitTwo alloc] init];
        quest64.amountOfMarks = 10;
        quest64.question = @"Explain the ways in which Prime Ministers are able to control Parliament";
        quest64.seenBefore = NO;
        quest64.year = 2009;
        quest64.primary_key = 64;
        
        QuestionModelUnitTwo * quest65 = [[QuestionModelUnitTwo alloc] init];
        quest65.amountOfMarks = 25;
        quest65.question = @"To what extent has prime ministerial power grown in recent years?";
        quest65.seenBefore = NO;
        quest65.year = 2009;
        quest65.primary_key = 65;
        
        QuestionModelUnitTwo *quest66 = [[QuestionModelUnitTwo alloc] init];
        quest66.amountOfMarks = 40;
        quest66.question = @"‘The House of Commons is in greater need of reform than the House of Lords.’ Discuss!";
        quest66.seenBefore = NO;
        quest66.year = 2015;
        quest66.primary_key = 66;
        
        QuestionModelUnitTwo *quest67 = [[QuestionModelUnitTwo alloc] init];
        quest67.amountOfMarks = 40;
        quest67.question = @"To what extent are modern prime ministers now presidents in all but name?";
        quest67.seenBefore = NO;
        quest67.year = 2015;
        quest67.primary_key = 67;
        
        QuestionModelUnitTwo *quest68 = [[QuestionModelUnitTwo alloc] init];
        quest68.amountOfMarks = 40;
        quest68.question = @"To what extent is there conflict in the UK between judges and government ministers?";
        quest68.seenBefore = NO;
        quest68.year = 2014;
        quest68.primary_key = 68;
        
        QuestionModelUnitTwo *quest69 = [[QuestionModelUnitTwo alloc] init];
        quest69.amountOfMarks = 40;
        quest69.question = @" ‘Parliament carries out none of its functions adequately.’ Discuss";
        quest69.seenBefore = NO;
        quest69.year = 2014;
        quest69.primary_key = 69;
        
        QuestionModelUnitTwo *quest70 = [[QuestionModelUnitTwo alloc] init];
        quest70.amountOfMarks = 40;
        quest70.question = @"To what extent have constitutional reforms introduced since 1997 made the UK more democratic?";
        quest70.seenBefore = NO;
        quest70.year = 2013;
        quest70.primary_key = 70;
        
        QuestionModelUnitTwo *quest71 = [[QuestionModelUnitTwo alloc] init];
        quest71.amountOfMarks = 40;
        quest71.question = @"In what ways, and to what extent, is the Human Rights Act controversial?";
        quest71.seenBefore = NO;
        quest71.year = 2013;
        quest71.primary_key = 71;
        
        QuestionModelUnitTwo *quest72 = [[QuestionModelUnitTwo alloc] init];
        quest72.amountOfMarks = 40;
        quest72.question = @"Has the experience of coalition government strengthened or weakened prime ministerial power?";
        quest72.seenBefore = NO;
        quest72.year = 2013;
        quest72.primary_key = 72;
        
        QuestionModelUnitTwo *quest73 = [[QuestionModelUnitTwo alloc] init];
        quest73.amountOfMarks = 40;
        quest73.question = @"‘The House of Lords is now more effective than the House of Commons in checking government power.’ Discuss.";
        quest73.seenBefore = NO;
        quest73.year = 2013;
        quest73.primary_key = 73;
        
        QuestionModelUnitTwo *quest74 = [[QuestionModelUnitTwo alloc] init];
        quest74.amountOfMarks = 40;
        quest74.question = @"How effective are backbench MPs ?";
        quest74.seenBefore = NO;
        quest74.year = 2012;
        quest74.primary_key = 74;
        
        QuestionModelUnitTwo *quest75 = [[QuestionModelUnitTwo alloc] init];
        quest75.amountOfMarks = 40;
        quest75.question = @"To what extent do judges protect individual rights and freedoms in the UK?";
        quest75.seenBefore = NO;
        quest75.year = 2012;
        quest75.primary_key = 75;
        
        QuestionModelUnitTwo *quest76 = [[QuestionModelUnitTwo alloc] init];
        quest76.amountOfMarks = 40;
        quest76.question = @"To what extent have constitutional reforms since 1997 reduced the powers of UK governments?";
        quest76.seenBefore = NO;
        quest76.year = 2012;
        quest76.primary_key = 76;
        
        QuestionModelUnitTwo *quest77 = [[QuestionModelUnitTwo alloc] init];
        quest77.amountOfMarks = 40;
        quest77.question = @"Are British prime ministers as powerful as is sometimes claimed?";
        quest77.seenBefore = NO;
        quest77.year = 2012;
        quest77.primary_key = 77;
        
        QuestionModelUnitTwo *quest78 = [[QuestionModelUnitTwo alloc] init];
        quest78.amountOfMarks = 40;
        quest78.question = @"To what extent has the location of sovereignty in the UK changed in recent years?";
        quest78.seenBefore = NO;
        quest78.year = 2011;
        quest78.primary_key = 78;
        
        QuestionModelUnitTwo *quest79 = [[QuestionModelUnitTwo alloc] init];
        quest79.amountOfMarks = 40;
        quest79.question = @"Is the UK Prime Minister now effectively a president?";
        quest79.seenBefore = NO;
        quest79.year = 2011;
        quest79.primary_key = 79;
        
        QuestionModelUnitTwo *quest80 = [[QuestionModelUnitTwo alloc] init];
        quest80.amountOfMarks = 40;
        quest80.question = @"‘The UK constitution is no longer fit for purpose.’ Discuss.";
        quest80.seenBefore = NO;
        quest80.year = 2011;
        quest80.primary_key = 80;
        
        QuestionModelUnitTwo *quest81 = [[QuestionModelUnitTwo alloc] init];
        quest81.amountOfMarks = 40;
        quest81.question = @"Is the judiciary too powerful, or is it not powerful enough?";
        quest81.seenBefore = NO;
        quest81.year = 2011;
        quest81.primary_key = 81;
        
        QuestionModelUnitTwo *quest82 = [[QuestionModelUnitTwo alloc] init];
        quest82.amountOfMarks = 40;
        quest82.question = @"To what extent does Parliament control executive power?";
        quest82.seenBefore = NO;
        quest82.year = 2010;
        quest82.primary_key = 82;
        
        QuestionModelUnitTwo *quest83 = [[QuestionModelUnitTwo alloc] init];
        quest83.amountOfMarks = 40;
        quest83.question = @"How effectively can the judiciary protect civil liberties in Britain?";
        quest83.seenBefore = NO;
        quest83.year = 2010;
        quest83.primary_key = 83;
        
        QuestionModelUnitTwo *quest84 = [[QuestionModelUnitTwo alloc] init];
        quest84.amountOfMarks = 40;
        quest84.question = @"‘The advantages of a codified constitution now outweigh its disadvantages’. Discuss.";
        quest84.seenBefore = NO;
        quest84.year = 2010;
        quest84.primary_key = 84;
        
        QuestionModelUnitTwo *quest85 = [[QuestionModelUnitTwo alloc] init];
        quest85.amountOfMarks = 40;
        quest85.question = @"To what extent does the prime minister dominate the political system in the UK?";
        quest85.seenBefore = NO;
        quest85.year = 2010;
        quest85.primary_key = 85;
        
        QuestionModelUnitTwo *quest86 = [[QuestionModelUnitTwo alloc] init];
        quest86.amountOfMarks = 40;
        quest86.question = @"How effectively can the judiciary control executive and legislative power in the UK?";
        quest86.seenBefore = NO;
        quest86.year = 2009;
        quest86.primary_key = 86;
        
        QuestionModelUnitTwo *quest87 = [[QuestionModelUnitTwo alloc] init];
        quest87.amountOfMarks = 40;
        quest87.question = @"‘Constitutional reform since 1997 has not gone far enough.’ Discuss";
        quest87.seenBefore = NO;
        quest87.year = 2009;
        quest87.primary_key = 87;
        
        RLMRealm *realm = [RLMRealm defaultRealm];
        @try {
            [realm beginWriteTransaction];
            [realm addObject: quest0];
            [realm addObject: quest1];
            [realm addObject: quest2];
            [realm addObject: quest3];
            [realm addObject: quest4];
            [realm addObject: quest5];
            [realm addObject: quest6];
            [realm addObject: quest7];
            [realm addObject: quest8];
            [realm addObject: quest9];
            [realm addObject: quest10];
            [realm addObject: quest11];
            [realm addObject: quest12];
            [realm addObject: quest13];
            [realm addObject: quest14];
            [realm addObject: quest15];
            [realm addObject: quest16];
            [realm addObject: quest17];
            [realm addObject: quest18];
            [realm addObject: quest19];
            [realm addObject: quest20];
            [realm addObject: quest21];
            [realm addObject: quest22];
            [realm addObject: quest23];
            [realm addObject: quest24];
            [realm addObject: quest25];
            [realm addObject: quest26];
            [realm addObject: quest27];
            [realm addObject: quest28];
            [realm addObject: quest29];
            [realm addObject: quest30];
            [realm addObject: quest31];
            [realm addObject: quest32];
            [realm addObject: quest33];
            [realm addObject: quest34];
            [realm addObject: quest35];
            [realm addObject: quest36];
            [realm addObject: quest37];
            [realm addObject: quest38];
            [realm addObject: quest39];
            [realm addObject: quest40];
            [realm addObject: quest41];
            [realm addObject: quest42];
            [realm addObject: quest43];
            [realm addObject: quest44];
            [realm addObject: quest45];
            [realm addObject: quest46];
            [realm addObject: quest47];
            [realm addObject: quest48];
            [realm addObject: quest49];
            [realm addObject: quest50];
            [realm addObject: quest51];
            [realm addObject: quest52];
            [realm addObject: quest53];
            [realm addObject: quest54];
            [realm addObject: quest55];
            [realm addObject: quest56];
            [realm addObject: quest57];
            [realm addObject: quest58];
            [realm addObject: quest59];
            [realm addObject: quest60];
            [realm addObject: quest61];
            [realm addObject: quest62];
            [realm addObject: quest63];
            [realm addObject: quest64];
            [realm addObject: quest65];
            [realm addObject: quest66];
            [realm addObject: quest67];
            [realm addObject: quest68];
            [realm addObject: quest69];
            [realm addObject: quest70];
            [realm addObject: quest71];
            [realm addObject: quest72];
            [realm addObject: quest73];
            [realm addObject: quest74];
            [realm addObject: quest75];
            [realm addObject: quest76];
            [realm addObject: quest77];
            [realm addObject: quest78];
            [realm addObject: quest79];
            [realm addObject: quest80];
            [realm addObject: quest81];
            [realm addObject: quest82];
            [realm addObject: quest83];
            [realm addObject: quest84];
            [realm addObject: quest85];
            [realm addObject: quest86];
            [realm addObject: quest87];
            [realm commitWriteTransaction];
        }
        @catch (NSException *exception) {
            NSLog(@"exception");
            if ([realm inWriteTransaction]) {
                [realm cancelWriteTransaction];
            }
        }
    } else {
        NSLog(@"%lu is in the array",(unsigned long)questionCount);
    }
}

@end

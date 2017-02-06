//
//  QuestionDataUnitOne.m
//  Politic
//
//  Created by Ben Bastow on 04/02/2017.
//  Copyright © 2017 benhamin. All rights reserved.
//

#import "QuestionDataUnitOne.h"


@implementation QuestionDataUnitOne

+(void)setUpData{
    RLMResults<QuestionModelUnitOne *> *questions = [QuestionModelUnitOne allObjects];
    NSUInteger questionCount = questions.count;
    
    if (questionCount == 0) {
        
        QuestionModelUnitOne * quest0 = [[QuestionModelUnitOne alloc] init];
        quest0.amountOfMarks = 5;
        quest0.question = @"Define democratic legitimacy and outline two ways in which it is achieved";
        quest0.seenBefore = NO;
        quest0.year = 2015;
        quest0.primary_key = 0;
        
        QuestionModelUnitOne * quest1 = [[QuestionModelUnitOne alloc] init];
        quest1.amountOfMarks = 10;
        quest1.question = @"Explain three ways in which representative democracy in the UK could be improved";
        quest1.seenBefore = NO;
        quest1.year = 2015;
        quest1.primary_key = 1;
        
        QuestionModelUnitOne * quest2 = [[QuestionModelUnitOne alloc] init];
        quest2.amountOfMarks = 25;
        quest2.question = @"To what extent is there a democratic deficit in the UK?";
        quest2.seenBefore = NO;
        quest2.year = 2015;
        quest2.primary_key = 2;
        
        QuestionModelUnitOne * quest3 = [[QuestionModelUnitOne alloc] init];
        quest3.amountOfMarks = 5;
        quest3.question = @"Outline two differences between promotional and sectional pressure groups";
        quest3.seenBefore = NO;
        quest3.year = 2015;
        quest3.primary_key = 3;
        
        QuestionModelUnitOne * quest4 = [[QuestionModelUnitOne alloc] init];
        quest4.amountOfMarks = 10;
        quest4.question = @"Using examples, explain three methods used by pressure groups to achieve their aims";
        quest4.seenBefore = NO;
        quest4.year = 2015;
        quest4.primary_key = 4;
        
        QuestionModelUnitOne * quest5 = [[QuestionModelUnitOne alloc] init];
        quest5.amountOfMarks = 25;
        quest5.question = @"Do pressure groups distribute or concentrate power?";
        quest5.seenBefore = NO;
        quest5.year = 2015;
        quest5.primary_key = 5;
        
        QuestionModelUnitOne * quest6 = [[QuestionModelUnitOne alloc] init];
        quest6.amountOfMarks = 5;
        quest6.question = @"Define consensus politics, using an example.";
        quest6.seenBefore = NO;
        quest6.year = 2015;
        quest6.primary_key = 6;
        
        QuestionModelUnitOne * quest7 = [[QuestionModelUnitOne alloc] init];
        quest7.amountOfMarks = 10;
        quest7.question = @"Explain three similarities between political parties and pressure groups.";
        quest7.seenBefore = NO;
        quest7.year = 2015;
        quest7.primary_key = 7;
        
        QuestionModelUnitOne * quest8 = [[QuestionModelUnitOne alloc] init];
        quest8.amountOfMarks = 25;
        quest8.question = @"To what extent do the major political parties agree over policies and ideas?";
        quest8.seenBefore = NO;
        quest8.year = 2015;
        quest8.primary_key = 8;
        
        QuestionModelUnitOne * quest9 = [[QuestionModelUnitOne alloc] init];
        quest9.amountOfMarks = 5;
        quest9.question = @"Outline two ways, other than voting in elections and referendums, in which people can participate in politics";
        quest9.seenBefore = NO;
        quest9.year = 2014;
        quest9.primary_key = 9;
        
        QuestionModelUnitOne * quest10 = [[QuestionModelUnitOne alloc] init];
        quest10.amountOfMarks = 10;
        quest10.question = @"Explain three criticisms that have been made of referendums.";
        quest10.seenBefore = NO;
        quest10.year = 2014;
        quest10.primary_key = 10;
        
        QuestionModelUnitOne * quest11 = [[QuestionModelUnitOne alloc] init];
        quest11.amountOfMarks = 25;
        quest11.question = @"Assess the strengths of representative democracy as it operates in the UK.";
        quest11.seenBefore = NO;
        quest11.year = 2014;
        quest11.primary_key = 11;
        
        QuestionModelUnitOne * quest12 = [[QuestionModelUnitOne alloc] init];
        quest12.amountOfMarks = 5;
        quest12.question = @"What is pluralist democracy?";
        quest12.seenBefore = NO;
        quest12.year = 2014;
        quest12.primary_key = 12;
        
        QuestionModelUnitOne * quest13 = [[QuestionModelUnitOne alloc] init];
        quest13.amountOfMarks = 10;
        quest13.question = @"Using examples, explain three reasons why pressure groups may fail to achieve their objectives";
        quest13.seenBefore = NO;
        quest13.year = 2014;
        quest13.primary_key = 13;
        
        QuestionModelUnitOne * quest14 = [[QuestionModelUnitOne alloc] init];
        quest14.amountOfMarks = 25;
        quest14.question = @"To what extent do pressure groups undermine democracy?";
        quest14.seenBefore = NO;
        quest14.year = 2014;
        quest14.primary_key = 14;
        
        QuestionModelUnitOne * quest15 = [[QuestionModelUnitOne alloc] init];
        quest15.amountOfMarks = 5;
        quest15.question = @"Outline two ways in which political parties differ from pressure groups";
        quest15.seenBefore = NO;
        quest15.year = 2014;
        quest15.primary_key = 15;
        
        QuestionModelUnitOne * quest16 = [[QuestionModelUnitOne alloc] init];
        quest16.amountOfMarks = 10;
        quest16.question = @"Using examples, explain the difference between left-wing and right-wing political ideas.";
        quest16.seenBefore = NO;
        quest16.year = 2014;
        quest16.primary_key = 16;
        
        QuestionModelUnitOne * quest17 = [[QuestionModelUnitOne alloc] init];
        quest17.amountOfMarks = 25;
        quest17.question = @"To what extent are the major parties internally divided over policies and ideas?";
        quest17.seenBefore = NO;
        quest17.year = 2014;
        quest17.primary_key = 17;
        
        QuestionModelUnitOne * quest18 = [[QuestionModelUnitOne alloc] init];
        quest18.amountOfMarks = 5;
        quest18.question = @"Describe two political ideas that are considered to be right wing";
        quest18.seenBefore = NO;
        quest18.year = 2013;
        quest18.primary_key = 18;
        
        QuestionModelUnitOne * quest19 = [[QuestionModelUnitOne alloc] init];
        quest19.amountOfMarks = 10;
        quest19.question = @"Explain three ways in which any one of the major political parties is internally divided";
        quest19.seenBefore = NO;
        quest19.year = 2013;
        quest19.primary_key = 19;
        
        QuestionModelUnitOne * quest20 = [[QuestionModelUnitOne alloc] init];
        quest20.amountOfMarks = 25;
        quest20.question = @"To what extent do the major parties differ over policies and ideas?";
        quest20.seenBefore = NO;
        quest20.year = 2013;
        quest20.primary_key = 20;
        
        QuestionModelUnitOne * quest21 = [[QuestionModelUnitOne alloc] init];
        quest21.amountOfMarks = 5;
        quest21.question = @"Describe two ways in which pressure groups promote political participation";
        quest21.seenBefore = NO;
        quest21.year = 2013;
        quest21.primary_key = 21;
        
        QuestionModelUnitOne * quest22 = [[QuestionModelUnitOne alloc] init];
        quest22.amountOfMarks = 10;
        quest22.question = @"Explain three reasons why pressure group activity may undermine democracy.";
        quest22.seenBefore = NO;
        quest22.year = 2013;
        quest22.primary_key = 22;
        
        QuestionModelUnitOne * quest23 = [[QuestionModelUnitOne alloc] init];
        quest23.amountOfMarks = 25;
        quest23.question = @"To what extent is the success of pressure groups a reflection of their level of public support?";
        quest23.seenBefore = NO;
        quest23.year = 2013;
        quest23.primary_key = 23;
        
        QuestionModelUnitOne * quest24 = [[QuestionModelUnitOne alloc] init];
        quest24.amountOfMarks = 5;
        quest24.question = @"Outline two features of the UK’s system of parliamentary democracy";
        quest24.seenBefore = NO;
        quest24.year = 2013;
        quest24.primary_key = 24;
        
        QuestionModelUnitOne * quest25 = [[QuestionModelUnitOne alloc] init];
        quest25.amountOfMarks = 10;
        quest25.question = @"Explain how and why the use of digital democracy could make the UK more democratic";
        quest25.seenBefore = NO;
        quest25.year = 2013;
        quest25.primary_key = 25;
        
        QuestionModelUnitOne * quest26 = [[QuestionModelUnitOne alloc] init];
        quest26.amountOfMarks = 25;
        quest26.question = @"Should direct democracy be more widely used in the UK?";
        quest26.seenBefore = NO;
        quest26.year = 2013;
        quest26.primary_key = 26;
        
        QuestionModelUnitOne * quest27 = [[QuestionModelUnitOne alloc] init];
        quest27.amountOfMarks = 5;
        quest27.question = @"Using an example, define direct democracy";
        quest27.seenBefore = NO;
        quest27.year = 2013;
        quest27.primary_key = 27;
        
        QuestionModelUnitOne * quest28 = [[QuestionModelUnitOne alloc] init];
        quest28.amountOfMarks = 10;
        quest28.question = @"Explain THREE criticisms of representative democracy";
        quest28.seenBefore = NO;
        quest28.year = 2013;
        quest28.primary_key = 28;
        
        QuestionModelUnitOne * quest29 = [[QuestionModelUnitOne alloc] init];
        quest29.amountOfMarks = 25;
        quest29.question = @"Assess the various measures, other than electoral reform, that have been suggested to improve democracy in the UK.";
        quest29.seenBefore = NO;
        quest29.year = 2013;
        quest29.primary_key = 29;
        
        QuestionModelUnitOne * quest30 = [[QuestionModelUnitOne alloc] init];
        quest30.amountOfMarks = 5;
        quest30.question = @"What is the link between elitism and pressure groups?";
        quest30.seenBefore = NO;
        quest30.year = 2013;
        quest30.primary_key = 30;
        
        QuestionModelUnitOne * quest31 = [[QuestionModelUnitOne alloc] init];
        quest31.amountOfMarks = 10;
        quest31.question = @"Explain three ways in which pressure groups exert influence.";
        quest31.seenBefore = NO;
        quest31.year = 2013;
        quest31.primary_key = 31;
        
        QuestionModelUnitOne * quest32 = [[QuestionModelUnitOne alloc] init];
        quest32.amountOfMarks = 25;
        quest32.question = @"To what extent is pressure group power in decline?";
        quest32.seenBefore = NO;
        quest32.year = 2013;
        quest32.primary_key = 32;
        
        QuestionModelUnitOne * quest33 = [[QuestionModelUnitOne alloc] init];
        quest33.amountOfMarks = 5;
        quest33.question = @"How does factionalism apply to political parties?";
        quest33.seenBefore = NO;
        quest33.year = 2013;
        quest33.primary_key = 33;
        
        QuestionModelUnitOne * quest34 = [[QuestionModelUnitOne alloc] init];
        quest34.amountOfMarks = 10;
        quest34.question = @"Identify THREE functions of political parties";
        quest34.seenBefore = NO;
        quest34.year = 2013;
        quest34.primary_key = 34;
        
        QuestionModelUnitOne * quest35 = [[QuestionModelUnitOne alloc] init];
        quest35.amountOfMarks = 25;
        quest35.question = @"To what extent has the Conservative Party abandoned Thatcherism?";
        quest35.seenBefore = NO;
        quest35.year = 2013;
        quest35.primary_key = 35;
        
        QuestionModelUnitOne * quest36 = [[QuestionModelUnitOne alloc] init];
        quest36.amountOfMarks = 5;
        quest36.question = @"How does a referendum differ from an election?";
        quest36.seenBefore = NO;
        quest36.year = 2012;
        quest36.primary_key = 36;
        
        QuestionModelUnitOne * quest37 = [[QuestionModelUnitOne alloc] init];
        quest37.amountOfMarks = 10;
        quest37.question = @"Explain the arguments in favour of making voting compulsory.";
        quest37.seenBefore = NO;
        quest37.year = 2012;
        quest37.primary_key = 37;
        
        QuestionModelUnitOne * quest38 = [[QuestionModelUnitOne alloc] init];
        quest38.amountOfMarks = 25;
        quest38.question = @"How effectively does representative democracy operate in the UK?";
        quest38.seenBefore = NO;
        quest38.year = 2012;
        quest38.primary_key = 38;
        
        QuestionModelUnitOne * quest39 = [[QuestionModelUnitOne alloc] init];
        quest39.amountOfMarks = 5;
        quest39.question = @"Outline two ideas associated with liberalism.";
        quest39.seenBefore = NO;
        quest39.year = 2012;
        quest39.primary_key = 39;
        
        QuestionModelUnitOne * quest40 = [[QuestionModelUnitOne alloc] init];
        quest40.amountOfMarks = 10;
        quest40.question = @"Explain three policies of the modern Labour Party.";
        quest40.seenBefore = NO;
        quest40.year = 2012;
        quest40.primary_key = 40;
        
        QuestionModelUnitOne * quest41 = [[QuestionModelUnitOne alloc] init];
        quest41.amountOfMarks = 25;
        quest41.question = @"To what extent have the parties involved in the Conservative-Liberal Democrat coalition remained faithful, since 2010, to their traditional principles and ideas?";
        quest41.seenBefore = NO;
        quest41.year = 2012;
        quest41.primary_key = 41;
        
        QuestionModelUnitOne * quest42 = [[QuestionModelUnitOne alloc] init];
        quest42.amountOfMarks = 5;
        quest42.question = @"How do pressure groups promote functional representation?";
        quest42.seenBefore = NO;
        quest42.year = 2012;
        quest42.primary_key = 42;
        
        QuestionModelUnitOne * quest43 = [[QuestionModelUnitOne alloc] init];
        quest43.amountOfMarks = 10;
        quest43.question = @" Explain three factors which may restrict the influence of a pressure group.";
        quest43.seenBefore = NO;
        quest43.year = 2012;
        quest43.primary_key = 43;
        
        QuestionModelUnitOne * quest44 = [[QuestionModelUnitOne alloc] init];
        quest44.amountOfMarks = 25;
        quest44.question = @"Are pressure groups becoming more powerful, or less powerful?";
        quest44.seenBefore = NO;
        quest44.year = 2012;
        quest44.primary_key = 44;
        
        QuestionModelUnitOne * quest45 = [[QuestionModelUnitOne alloc] init];
        quest45.amountOfMarks = 5;
        quest45.question = @"Define democratic legitimacy, and outline one way in which it is achieved.";
        quest45.seenBefore = NO;
        quest45.year = 2012;
        quest45.primary_key = 45;
        
        QuestionModelUnitOne * quest46 = [[QuestionModelUnitOne alloc] init];
        quest46.amountOfMarks = 10;
        quest46.question = @"In what circumstances are referendums held in the UK?";
        quest46.seenBefore = NO;
        quest46.year = 2012;
        quest46.primary_key = 46;
        
        QuestionModelUnitOne * quest47 = [[QuestionModelUnitOne alloc] init];
        quest47.amountOfMarks = 25;
        quest47.question = @"Should referendums be more widely used in the UK?";
        quest47.seenBefore = NO;
        quest47.year = 2012;
        quest47.primary_key = 47;
        
        QuestionModelUnitOne * quest48 = [[QuestionModelUnitOne alloc] init];
        quest48.amountOfMarks = 5;
        quest48.question = @"What is the link between pluralism and pressure groups?";
        quest48.seenBefore = NO;
        quest48.year = 2012;
        quest48.primary_key = 48;
        
        QuestionModelUnitOne * quest49 = [[QuestionModelUnitOne alloc] init];
        quest49.amountOfMarks = 10;
        quest49.question = @"Explain why different pressure groups use different methods to achieve their aims.";
        quest49.seenBefore = NO;
        quest49.year = 2012;
        quest49.primary_key = 49;
        
        QuestionModelUnitOne * quest50 = [[QuestionModelUnitOne alloc] init];
        quest50.amountOfMarks = 25;
        quest50.question = @"To what extent do pressure groups strengthen pluralist democracy?";
        quest50.seenBefore = NO;
        quest50.year = 2012;
        quest50.primary_key = 50;
        
        QuestionModelUnitOne * quest51 = [[QuestionModelUnitOne alloc] init];
        quest51.amountOfMarks = 5;
        quest51.question = @"Define adversary politics, using an example.";
        quest51.seenBefore = NO;
        quest51.year = 2012;
        quest51.primary_key = 51;
        
        QuestionModelUnitOne * quest52 = [[QuestionModelUnitOne alloc] init];
        quest52.amountOfMarks = 10;
        quest52.question = @" Explain the divisions that exist within the Conservative Party over ideas and policies.";
        quest52.seenBefore = NO;
        quest52.year = 2012;
        quest52.primary_key = 52;
        
        QuestionModelUnitOne * quest53 = [[QuestionModelUnitOne alloc] init];
        quest53.amountOfMarks = 25;
        quest53.question = @"To what extent is the Labour Party still committed to its traditional principles?";
        quest53.seenBefore = NO;
        quest53.year = 2012;
        quest53.primary_key = 53;
        
        QuestionModelUnitOne * quest54 = [[QuestionModelUnitOne alloc] init];
        quest54.amountOfMarks = 5;
        quest54.question = @"Outline two differences between pressure groups and political parties";
        quest54.seenBefore = NO;
        quest54.year = 2011;
        quest54.primary_key = 54;
        
        QuestionModelUnitOne * quest55 = [[QuestionModelUnitOne alloc] init];
        quest55.amountOfMarks = 10;
        quest55.question = @"How and why do some pressure groups use direct action?";
        quest55.seenBefore = NO;
        quest55.year = 2011;
        quest55.primary_key = 55;
        
        QuestionModelUnitOne * quest56 = [[QuestionModelUnitOne alloc] init];
        quest56.amountOfMarks = 25;
        quest56.question = @"To what extent are the largest pressure groups the most successful ones?";
        quest56.seenBefore = NO;
        quest56.year = 2011;
        quest56.primary_key = 56;
        
        QuestionModelUnitOne * quest57 = [[QuestionModelUnitOne alloc] init];
        quest57.amountOfMarks = 5;
        quest57.question = @"Define two functions of a political party.";
        quest57.seenBefore = NO;
        quest57.year = 2011;
        quest57.primary_key = 57;
        
        QuestionModelUnitOne * quest58 = [[QuestionModelUnitOne alloc] init];
        quest58.amountOfMarks = 10;
        quest58.question = @"Explain what is meant by the term Thatcherism.";
        quest58.seenBefore = NO;
        quest58.year = 2011;
        quest58.primary_key = 58;
        
        QuestionModelUnitOne * quest59 = [[QuestionModelUnitOne alloc] init];
        quest59.amountOfMarks = 25;
        quest59.question = @"To what extent do the UK’s major parties accept Thatcherite ideas and policies?";
        quest59.seenBefore = NO;
        quest59.year = 2011;
        quest59.primary_key = 59;
        
        QuestionModelUnitOne * quest60 = [[QuestionModelUnitOne alloc] init];
        quest60.amountOfMarks = 5;
        quest60.question = @"Apart from voting in elections and referendums, describe two ways of participating in politics.";
        quest60.seenBefore = NO;
        quest60.year = 2011;
        quest60.primary_key = 60;
        
        QuestionModelUnitOne * quest61 = [[QuestionModelUnitOne alloc] init];
        quest61.amountOfMarks = 10;
        quest61.question = @"Explain the arguments in favour of lowering the voting age.";
        quest61.seenBefore = NO;
        quest61.year = 2011;
        quest61.primary_key = 61;
        
        QuestionModelUnitOne * quest62 = [[QuestionModelUnitOne alloc] init];
        quest62.amountOfMarks = 25;
        quest62.question = @"To what extent would the wider use of referendums improve democracy in the UK?";
        quest62.seenBefore = NO;
        quest62.year = 2011;
        quest62.primary_key = 62;
        
        QuestionModelUnitOne * quest63 = [[QuestionModelUnitOne alloc] init];
        quest63.amountOfMarks = 5;
        quest63.question = @"Outline the key features of a referendum.";
        quest63.seenBefore = NO;
        quest63.year = 2011;
        quest63.primary_key = 63;
        
        QuestionModelUnitOne * quest64 = [[QuestionModelUnitOne alloc] init];
        quest64.amountOfMarks = 10;
        quest64.question = @"Apart from referendums, explain three ways in which democracy in the UK could be improved.";
        quest64.seenBefore = NO;
        quest64.year = 2011;
        quest64.primary_key = 64;
        
        QuestionModelUnitOne * quest65 = [[QuestionModelUnitOne alloc] init];
        quest65.amountOfMarks = 25;
        quest65.question = @"To what extent does democracy in the UK suffer from a ‘participation crisis’?";
        quest65.seenBefore = NO;
        quest65.year = 2011;
        quest65.primary_key = 65;
        
        QuestionModelUnitOne * quest66 = [[QuestionModelUnitOne alloc] init];
        quest66.amountOfMarks = 5;
        quest66.question = @"Using examples, distinguish between promotional and sectional pressure groups.";
        quest66.seenBefore = NO;
        quest66.year = 2011;
        quest66.primary_key = 66;
        
        QuestionModelUnitOne * quest67 = [[QuestionModelUnitOne alloc] init];
        quest67.amountOfMarks = 10;
        quest67.question = @"How and why do pressure groups influence public opinion?";
        quest67.seenBefore = NO;
        quest67.year = 2011;
        quest67.primary_key = 67;
        
        QuestionModelUnitOne * quest68 = [[QuestionModelUnitOne alloc] init];
        quest68.amountOfMarks = 25;
        quest68.question = @"Is pressure group politics in the UK better described as pluralist or elitist?";
        quest68.seenBefore = NO;
        quest68.year = 2011;
        quest68.primary_key = 68;
        
        QuestionModelUnitOne * quest69 = [[QuestionModelUnitOne alloc] init];
        quest69.amountOfMarks = 5;
        quest69.question = @"What is meant by consensus politics?";
        quest69.seenBefore = NO;
        quest69.year = 2011;
        quest69.primary_key = 69;
        
        QuestionModelUnitOne * quest70 = [[QuestionModelUnitOne alloc] init];
        quest70.amountOfMarks = 10;
        quest70.question = @"Has consensus politics become more or less evident in the UK since May 2010?";
        quest70.seenBefore = NO;
        quest70.year = 2011;
        quest70.primary_key = 70;
        
        QuestionModelUnitOne * quest71 = [[QuestionModelUnitOne alloc] init];
        quest71.amountOfMarks = 25;
        quest71.question = @"To what extent are the major UK parties internally united over ideas and policies?";
        quest71.seenBefore = NO;
        quest71.year = 2011;
        quest71.primary_key = 71;
        
        QuestionModelUnitOne * quest72 = [[QuestionModelUnitOne alloc] init];
        quest72.amountOfMarks = 5;
        quest72.question = @"Distinguish between pluralism and elitism";
        quest72.seenBefore = NO;
        quest72.year = 2010;
        quest72.primary_key = 72;
        
        QuestionModelUnitOne * quest73 = [[QuestionModelUnitOne alloc] init];
        quest73.amountOfMarks = 10;
        quest73.question = @"Explain three political functions of pressure groups";
        quest73.seenBefore = NO;
        quest73.year = 2010;
        quest73.primary_key = 73;
        
        QuestionModelUnitOne * quest74 = [[QuestionModelUnitOne alloc] init];
        quest74.amountOfMarks = 25;
        quest74.question = @"To what extent do pressure groups undermine democracy?";
        quest74.seenBefore = NO;
        quest74.year = 2010;
        quest74.primary_key = 74;
        
        QuestionModelUnitOne * quest75 = [[QuestionModelUnitOne alloc] init];
        quest75.amountOfMarks = 5;
        quest75.question = @"What is meant by legitimacy?";
        quest75.seenBefore = NO;
        quest75.year = 2010;
        quest75.primary_key = 75;
        
        QuestionModelUnitOne * quest76 = [[QuestionModelUnitOne alloc] init];
        quest76.amountOfMarks = 10;
        quest76.question = @"Explain three strengths of representative democracy.";
        quest76.seenBefore = NO;
        quest76.year = 2010;
        quest76.primary_key = 76;
        
        QuestionModelUnitOne * quest77 = [[QuestionModelUnitOne alloc] init];
        quest77.amountOfMarks = 25;
        quest77.question = @"How democratic is the UK?";
        quest77.seenBefore = NO;
        quest77.year = 2010;
        quest77.primary_key = 77;
        
        QuestionModelUnitOne * quest78 = [[QuestionModelUnitOne alloc] init];
        quest78.amountOfMarks = 5;
        quest78.question = @"Distinguish between left-wing and right-wing political ideas.";
        quest78.seenBefore = NO;
        quest78.year = 2010;
        quest78.primary_key = 78;
        
        QuestionModelUnitOne * quest79 = [[QuestionModelUnitOne alloc] init];
        quest79.amountOfMarks = 10;
        quest79.question = @"Explain the differences within the Labour Party over ideas and policies.";
        quest79.seenBefore = NO;
        quest79.year = 2010;
        quest79.primary_key = 79;
        
        QuestionModelUnitOne * quest80 = [[QuestionModelUnitOne alloc] init];
        quest80.amountOfMarks = 25;
        quest80.question = @"To what extent are the ideas and policies of the Labour and Conservative parties similar?";
        quest80.seenBefore = NO;
        quest80.year = 2010;
        quest80.primary_key = 80;
        
        QuestionModelUnitOne * quest81 = [[QuestionModelUnitOne alloc] init];
        quest81.amountOfMarks = 5;
        quest81.question = @"Using examples distinguish between insider and outsider pressure groups.";
        quest81.seenBefore = NO;
        quest81.year = 2010;
        quest81.primary_key = 81;
        
        QuestionModelUnitOne * quest82 = [[QuestionModelUnitOne alloc] init];
        quest82.amountOfMarks = 10;
        quest82.question = @"Explain the factors which limit the success of pressure groups.";
        quest82.seenBefore = NO;
        quest82.year = 2010;
        quest82.primary_key = 82;
        
        QuestionModelUnitOne * quest83 = [[QuestionModelUnitOne alloc] init];
        quest83.amountOfMarks = 25;
        quest83.question = @"To what extent do pressure groups promote political participation in the UK?";
        quest83.seenBefore = NO;
        quest83.year = 2010;
        quest83.primary_key = 83;
        
        QuestionModelUnitOne * quest84 = [[QuestionModelUnitOne alloc] init];
        quest84.amountOfMarks = 5;
        quest84.question = @"Using an example, define consensus politics";
        quest84.seenBefore = NO;
        quest84.year = 2010;
        quest84.primary_key = 84;
        
        QuestionModelUnitOne * quest85 = [[QuestionModelUnitOne alloc] init];
        quest85.amountOfMarks = 10;
        quest85.question = @"Explain the ideas and policies which link the current Labour Party to socialism.";
        quest85.seenBefore = NO;
        quest85.year = 2010;
        quest85.primary_key = 85;
        
        QuestionModelUnitOne * quest86 = [[QuestionModelUnitOne alloc] init];
        quest86.amountOfMarks = 25;
        quest86.question = @"To what extent is the current Conservative Party influenced by ‘One Nation’ principles?";
        quest86.seenBefore = NO;
        quest86.year = 2010;
        quest86.primary_key = 86;
        
        QuestionModelUnitOne * quest87 = [[QuestionModelUnitOne alloc] init];
        quest87.amountOfMarks = 5;
        quest87.question = @"Define direct democracy.";
        quest87.seenBefore = NO;
        quest87.year = 2010;
        quest87.primary_key = 87;
        
        QuestionModelUnitOne * quest88 = [[QuestionModelUnitOne alloc] init];
        quest88.amountOfMarks = 10;
        quest88.question = @"Explain three forms of democratic participation";
        quest88.seenBefore = NO;
        quest88.year = 2010;
        quest88.primary_key = 88;
        
        QuestionModelUnitOne * quest89 = [[QuestionModelUnitOne alloc] init];
        quest89.amountOfMarks = 25;
        quest89.question = @"Assess the arguments in favour of the greater use of direct democracy in the UK.";
        quest89.seenBefore = NO;
        quest89.year = 2010;
        quest89.primary_key = 89;
        
        QuestionModelUnitOne * quest90 = [[QuestionModelUnitOne alloc] init];
        quest90.amountOfMarks = 5;
        quest90.question = @"Using an example, define adversary politics.";
        quest90.seenBefore = NO;
        quest90.year = 2009;
        quest90.primary_key = 90;
        
        QuestionModelUnitOne * quest91 = [[QuestionModelUnitOne alloc] init];
        quest91.amountOfMarks = 10;
        quest91.question = @"What divisions exist within the current Conservative Party over ideas and policies?";
        quest91.seenBefore = NO;
        quest91.year = 2009;
        quest91.primary_key = 91;
        
        QuestionModelUnitOne * quest92 = [[QuestionModelUnitOne alloc] init];
        quest92.amountOfMarks = 25;
        quest92.question = @"What divisions exist within the current Conservative Party over ideas and policies?";
        quest92.seenBefore = NO;
        quest92.year = 2009;
        quest92.primary_key = 92;
        
        QuestionModelUnitOne * quest93 = [[QuestionModelUnitOne alloc] init];
        quest93.amountOfMarks = 5;
        quest93.question = @"Using examples, distinguish between a sectional and promotional pressure groups.";
        quest93.seenBefore = NO;
        quest93.year = 2009;
        quest93.primary_key = 93;
        
        QuestionModelUnitOne * quest94 = [[QuestionModelUnitOne alloc] init];
        quest94.amountOfMarks = 10;
        quest94.question = @"Explain the methods used by pressure groups to influence government.";
        quest94.seenBefore = NO;
        quest94.year = 2009;
        quest94.primary_key = 94;
        
        QuestionModelUnitOne * quest95 = [[QuestionModelUnitOne alloc] init];
        quest95.amountOfMarks = 25;
        quest95.question = @"To what extent do pressure groups promote pluralist democracy?";
        quest95.seenBefore = NO;
        quest95.year = 2009;
        quest95.primary_key = 95;
        
        QuestionModelUnitOne * quest96 = [[QuestionModelUnitOne alloc] init];
        quest96.amountOfMarks = 5;
        quest96.question = @"What are the main features of representative democracy?";
        quest96.seenBefore = NO;
        quest96.year = 2009;
        quest96.primary_key = 96;
        
        QuestionModelUnitOne * quest97 = [[QuestionModelUnitOne alloc] init];
        quest97.amountOfMarks = 10;
        quest97.question = @"In what ways has political participation declined in the UK in recent years?";
        quest97.seenBefore = NO;
        quest97.year = 2009;
        quest97.primary_key = 97;
        
        QuestionModelUnitOne * quest98 = [[QuestionModelUnitOne alloc] init];
        quest98.amountOfMarks = 25;
        quest98.question = @"Evaluate the effectiveness of the various ways in which participation and democracy could be strengthened in the UK.";
        quest98.seenBefore = NO;
        quest98.year = 2009;
        quest98.primary_key = 98;
        
        QuestionModelUnitOne * quest99 = [[QuestionModelUnitOne alloc] init];
        quest99.amountOfMarks = 5;
        quest99.question = @"What is meant by pluralism?";
        quest99.seenBefore = NO;
        quest99.year = 2009;
        quest99.primary_key = 99;
        
        QuestionModelUnitOne * quest100 = [[QuestionModelUnitOne alloc] init];
        quest100.amountOfMarks = 10;
        quest100.question = @"Why is it sometimes difficult to distinguish between pressure groups and political parties?";
        quest100.seenBefore = NO;
        quest100.year = 2009;
        quest100.primary_key = 100;
        
        QuestionModelUnitOne * quest101 = [[QuestionModelUnitOne alloc] init];
        quest101.amountOfMarks = 25;
        quest101.question = @"To what extent have pressure groups become more important in recent years?";
        quest101.seenBefore = NO;
        quest101.year = 2009;
        quest101.primary_key = 101;
        
        QuestionModelUnitOne * quest102 = [[QuestionModelUnitOne alloc] init];
        quest102.amountOfMarks = 5;
        quest102.question = @"Define liberal democracy";
        quest102.seenBefore = NO;
        quest102.year = 2009;
        quest102.primary_key = 102;
        
        QuestionModelUnitOne * quest103 = [[QuestionModelUnitOne alloc] init];
        quest103.amountOfMarks = 10;
        quest103.question = @"Explain the main features of the UK’s democratic system.";
        quest103.seenBefore = NO;
        quest103.year = 2009;
        quest103.primary_key = 103;
        
        QuestionModelUnitOne * quest104 = [[QuestionModelUnitOne alloc] init];
        quest104.amountOfMarks = 25;
        quest104.question = @"To what extent is there a ‘democratic deficit’ in the UK?";
        quest104.seenBefore = NO;
        quest104.year = 2009;
        quest104.primary_key = 104;
        
        QuestionModelUnitOne * quest105 = [[QuestionModelUnitOne alloc] init];
        quest105.amountOfMarks = 5;
        quest105.question = @"Outline two functions of a political party";
        quest105.seenBefore = NO;
        quest105.year = 2009;
        quest105.primary_key = 105;
        
        QuestionModelUnitOne * quest106 = [[QuestionModelUnitOne alloc] init];
        quest106.amountOfMarks = 10;
        quest106.question = @"In what ways has the Conservative Party distanced itself from Thatcherism?";
        quest106.seenBefore = NO;
        quest106.year = 2009;
        quest106.primary_key = 106;
        
        QuestionModelUnitOne * quest107 = [[QuestionModelUnitOne alloc] init];
        quest107.amountOfMarks = 25;
        quest107.question = @"To what extent is the Labour Party still committed to its traditional principles?";
        quest107.seenBefore = NO;
        quest107.year = 2009;
        quest107.primary_key = 107;
        
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
            [realm addObject: quest88];
            [realm addObject: quest89];
            [realm addObject: quest90];
            [realm addObject: quest91];
            [realm addObject: quest92];
            [realm addObject: quest93];
            [realm addObject: quest94];
            [realm addObject: quest95];
            [realm addObject: quest96];
            [realm addObject: quest97];
            [realm addObject: quest98];
            [realm addObject: quest99];
            [realm addObject: quest100];
            [realm addObject: quest101];
            [realm addObject: quest102];
            [realm addObject: quest103];
            [realm addObject: quest104];
            [realm addObject: quest105];
            [realm addObject: quest106];
            [realm addObject: quest107];
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

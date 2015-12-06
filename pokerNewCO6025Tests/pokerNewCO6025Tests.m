//
//  pokerNewCO6025Tests.m
//  pokerNewCO6025Tests
//
//  Created by DANIEL MULLAN on 27/07/2014.
//  Copyright (c) 2014 DANIEL MULLAN. All rights reserved.
//

#import "pokerNewCO6025Tests.h"
#import "Hand.h"
#import "Card.h"

@implementation pokerNewCO6025Tests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}
//-----------------block of tests for tests to not be succesful-----------------
//test ryoal flush is false (set up to return NO)
-(void)testisnotRoyalFlush{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Jack;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Queen;
    card1.suit = Diamonds;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = King;
    card2.suit = Diamonds;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Nine;
    card3.suit = Diamonds;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Ace;
    card4.suit = Diamonds;
    [hand addcard:card4];
    
    BOOL isRoyalFlush = [hand isRoyalFlush];
    
    STAssertTrue(isRoyalFlush, @"Royal Flush Test");
    
}

//test straight flush is false (set up to return NO)
-(void)testisnotStraightFlush{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Two;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Three;
    card1.suit = Diamonds;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Four;
    card2.suit = Diamonds;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Five;
    card3.suit = Diamonds;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Seven;
    card4.suit = Diamonds;
    [hand addcard:card4];
    
    BOOL isStraightFlush = [hand isStraightFlush];
    
    STAssertTrue(isStraightFlush, @"Straight Flush test");
}

//test four of a kind is false (set up to return NO)
-(void)testisnotFours{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Nine;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Three;
    card1.suit = Spades;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Three;
    card2.suit = Hearts;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Three;
    card3.suit = Diamonds;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Nine;
    card4.suit = Diamonds;
    [hand addcard:card4];
    
    BOOL isFours = [hand isFours];
    
    STAssertTrue(isFours, @"Four of a Kind test");
    
}

//test full house is false (set up to return NO)
-(void)testisnotFullHouse{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Nine;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Three;
    card1.suit = Diamonds;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Five;
    card2.suit = Diamonds;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Three;
    card3.suit = Spades;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Nine;
    card4.suit = Clubs;
    [hand addcard:card4];
    
    BOOL isFullHouse = [hand isFullHouse];
    
    STAssertTrue(isFullHouse, @"Full House Test");
}

//test for flush false (set up to return NO)
-(void)testisnotFlush{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Three;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Four;
    card1.suit = Diamonds;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Five;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Seven;
    card3.suit = Diamonds;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Nine;
    card4.suit = Diamonds;
    [hand addcard:card4];
    
    BOOL isFlush = [hand isFlush];
    
    STAssertTrue(isFlush, @"Flush Test");
    
}


//test straight == false (set up to return NO)
-(void)testisnotStraight{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Three;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Five;
    card1.suit = Hearts;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Seven;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Nine;
    card3.suit = Clubs;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Queen;
    card4.suit = Spades;
    [hand addcard:card4];
    
    BOOL isStraight = [hand isStraight];
    
    STAssertTrue(isStraight, @"Straight Test");
}

//test three of a kind is false (set up to return NO)
-(void)testisnotThrees{
    
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Four;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Four;
    card1.suit = Hearts;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Seven;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Two;
    card3.suit = Clubs;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Five;
    card4.suit = Spades;
    [hand addcard:card4];
    
    BOOL isThrees = [hand isThrees];
    
    STAssertTrue(isThrees, @"Three of a Kind Test");
}


//test two pair is false (set up to return NO)
-(void)testisnotTwoPair{
    
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Ace;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Nine;
    card1.suit = Hearts;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Two;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Three;
    card3.suit = Clubs;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Four;
    card4.suit = Spades;
    [hand addcard:card4];
    
    BOOL isTwoPair = [hand isTwoPair];
    
    STAssertTrue(isTwoPair, @"Two Pair Test");
}

//test pair is false (set up to return NO)
-(void)testisnotPair{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Ace;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Eight;
    card1.suit = Hearts;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Two;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Three;
    card3.suit = Clubs;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Four;
    card4.suit = Spades;
    [hand addcard:card4];
    
    BOOL isPair = [hand isPair];
    
    STAssertTrue(isPair, @"Pair Test");
}


//test high card is true (set up to return YES)
-(void)testisnotHigh{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    
    BOOL isHigh = [hand isHigh];
    
    STAssertTrue(isHigh, @"High card test");
}




//-----------------block of tests for tests to be succesful-----------------
//test royal flush is true (set up to return YES)
-(void)testisRoyalFlush{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Jack;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Queen;
    card1.suit = Diamonds;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = King;
    card2.suit = Diamonds;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Ten;
    card3.suit = Diamonds;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Ace;
    card4.suit = Diamonds;
    [hand addcard:card4];
    
    BOOL isRoyalFlush = [hand isRoyalFlush];
    
    STAssertTrue(isRoyalFlush, @"Royal Flush Test");
    
}

//test straight flush is true (set up to return YES)
-(void)testisStraightFlush{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Two;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Three;
    card1.suit = Diamonds;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Four;
    card2.suit = Diamonds;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Five;
    card3.suit = Diamonds;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Six;
    card4.suit = Diamonds;
    [hand addcard:card4];
    
    BOOL isStraightFlush = [hand isStraightFlush];
    
    STAssertTrue(isStraightFlush, @"Straight Flush test");
}

//test four of a kind is true (set up to return YES)
-(void)testisFours{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Nine;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Three;
    card1.suit = Spades;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Three;
    card2.suit = Hearts;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Three;
    card3.suit = Diamonds;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Three;
    card4.suit = Diamonds;
    [hand addcard:card4];
    
    BOOL isFours = [hand isFours];
    
    STAssertTrue(isFours, @"Four of a Kind test");
    
}

//test for a full house to be true (set up to return YES)
-(void)testisFullHouse{
        Card *card = [[Card alloc]init];
        Hand *hand = [[Hand alloc]init];
        card.rank = Nine;
        card.suit = Diamonds;
        [hand addcard:card];
        
        Card *card1 = [[Card alloc]init];
        card1.rank = Three;
        card1.suit = Diamonds;
        [hand addcard:card1];
        
        Card *card2 = [[Card alloc]init];
        card2.rank = Three;
        card2.suit = Diamonds;
        [hand addcard:card2];
        
        Card *card3 = [[Card alloc]init];
        card3.rank = Three;
        card3.suit = Spades;
        [hand addcard:card3];
        
        Card *card4 = [[Card alloc]init];
        card4.rank = Nine;
        card4.suit = Clubs;
        [hand addcard:card4];
        
        BOOL isFullHouse = [hand isFullHouse];
        
        STAssertTrue(isFullHouse, @"Full House Test");
}

//test for a flush (set up to return YES)
-(void)testisFlush{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Three;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Four;
    card1.suit = Diamonds;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Five;
    card2.suit = Diamonds;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Six;
    card3.suit = Diamonds;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Seven;
    card4.suit = Diamonds;
    [hand addcard:card4];
    
    BOOL isFlush = [hand isFlush];
    
    STAssertTrue(isFlush, @"Flush Test");

}


//test for a straight true (set up to return YES)
-(void)testisStraight{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Three;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Four;
    card1.suit = Hearts;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Five;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Six;
    card3.suit = Clubs;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Seven;
    card4.suit = Spades;
    [hand addcard:card4];
    
    BOOL isStraight = [hand isStraight];
    
    STAssertTrue(isStraight, @"Straight Test");
}

//test for three of a kind (set up to return YES)
-(void)testisThrees{
    
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Four;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Four;
    card1.suit = Hearts;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Four;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Two;
    card3.suit = Clubs;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Five;
    card4.suit = Spades;
    [hand addcard:card4];
    
    BOOL isThrees = [hand isThrees];
    
    STAssertTrue(isThrees, @"Three of a Kind Test");
}


//test for two pair true (set up to return YES)
-(void)testisTwoPair{
    
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Ace;
    card.suit = Diamonds;
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Ace;
    card1.suit = Hearts;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Two;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Two;
    card3.suit = Clubs;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Four;
    card4.suit = Spades;
    [hand addcard:card4];
    
    BOOL isTwoPair = [hand isTwoPair];
    
    STAssertTrue(isTwoPair, @"Two Pair Test");
}

//test for a pair is true (set up to return YES)
-(void)testisPair{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Ace;
    card.suit = Diamonds;    
    [hand addcard:card];
    
    Card *card1 = [[Card alloc]init];
    card1.rank = Ace;
    card1.suit = Hearts;
    [hand addcard:card1];
    
    Card *card2 = [[Card alloc]init];
    card2.rank = Two;
    card2.suit = Spades;
    [hand addcard:card2];
    
    Card *card3 = [[Card alloc]init];
    card3.rank = Three;
    card3.suit = Clubs;
    [hand addcard:card3];
    
    Card *card4 = [[Card alloc]init];
    card4.rank = Four;
    card4.suit = Spades;
    [hand addcard:card4];
    
    BOOL isPair = [hand isPair];
    
    STAssertTrue(isPair, @"Pair Test");
}


//test high card is true (set up to return YES)
-(void)testisHigh{
    Card *card = [[Card alloc]init];
    Hand *hand = [[Hand alloc]init];
    card.rank = Ace;
    card.suit = Diamonds;
    [hand addcard:card];
    
    BOOL isHigh = [hand isHigh];
    
    STAssertTrue(isHigh, @"High card test");
}

- (void)testExample
{

    //STFail(@"Unit tests are not implemented yet in pokerNewCO6025Tests");
}

@end

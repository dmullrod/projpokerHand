//
//  Hand.m
//  pokerNewCO6025
//
//  Created by DANIEL MULLAN on 27/07/2014.
//  Copyright (c) 2014 DANIEL MULLAN. All rights reserved.
//

#import "Hand.h"

@implementation Hand


//new instance of hand
//make sure array exists every instance of hand
- (id) init {
    
    if(self = [super init]) {        
    self.allCards = [[NSMutableArray alloc] init];
    }
    return self;
}

//called by view controller when a new card is added
//adds to a mutable array, count of array
-(void)addcard:(Card*)card{
    [self.allCards addObject:card];
    NSLog(@"view array count: %d", [self.allCards count]);
    
}
//returns an integer of the count of objects in array
-(NSInteger)cardsindeck {
	return [self.allCards count];
}

-(NSArray *)sortedBySuit {
    //make a copy of the hand mutable array and sort the key(suit) in ascending order
    NSMutableArray *tempsortedSuit = [self.allCards mutableCopy];
    NSSortDescriptor *suitDescriptor = [[NSSortDescriptor alloc] initWithKey:@"suit" ascending:YES];
    NSArray *descriptors = [NSMutableArray arrayWithObject:suitDescriptor];
    NSArray *sortedArray = [tempsortedSuit sortedArrayUsingDescriptors:descriptors];
    return sortedArray;
    
}

-(NSArray *)sortedByRank {
    //make a copy of the hand mutable array and sort the key(rank) in ascending order
    NSMutableArray *tempsortedRank = [self.allCards mutableCopy];
    NSSortDescriptor *rankDescriptor = [[NSSortDescriptor alloc] initWithKey:@"rank" ascending:YES];
    NSArray *descriptors = [NSMutableArray arrayWithObject:rankDescriptor];
    NSArray *sortedArray = [tempsortedRank sortedArrayUsingDescriptors:descriptors];
    return sortedArray;
    
}
//check royal flush
-(BOOL)isRoyalFlush{
    NSMutableArray *tempCards = [self.sortedByRank mutableCopy];
    Card *card1 = (Card*)[tempCards objectAtIndex:0];
    Card *card2 = (Card*)[tempCards objectAtIndex:1];
    Card *card3 = (Card*)[tempCards objectAtIndex:2];
    Card *card4 = (Card*)[tempCards objectAtIndex:3];
    Card *card5 = (Card*)[tempCards objectAtIndex:4];
    if(((self.isFlush == YES) && (card1.rank == 1)) && ((card2.rank == (card1.rank +9)) && (card3.rank == (card2.rank +1)) && (card4.rank == (card3.rank +1)) && (card5.rank == (card4.rank +1)))){
        return YES;
    }
return NO;
}

//check for straight using other boolean methods
-(BOOL)isStraightFlush{
    if(self.isStraight == YES && self.isFlush == YES){
        return YES;
    }
    return NO;
}

//boolean four of a kind
-(BOOL)isFours{
    NSMutableArray *tempCards = [self.sortedByRank mutableCopy];
    Card *card1 = (Card*)[tempCards objectAtIndex:0];
    Card *card2 = (Card*)[tempCards objectAtIndex:1];
    Card *card3 = (Card*)[tempCards objectAtIndex:2];
    Card *card4 = (Card*)[tempCards objectAtIndex:3];
    Card *card5 = (Card*)[tempCards objectAtIndex:4];
    if(((card1.rank == card2.rank) && (card2.rank == card3.rank) && (card3.rank == card4.rank)) || ((card2.rank == card3.rank) && (card3.rank == card4.rank) && (card4.rank == card5.rank))){
        return YES;
    }
return NO;
}

//boolean fullhouse
-(BOOL)isFullHouse{
    NSMutableArray *tempCards = [self.sortedByRank mutableCopy];
    Card *card1 = (Card*)[tempCards objectAtIndex:0];
    Card *card2 = (Card*)[tempCards objectAtIndex:1];
    Card *card3 = (Card*)[tempCards objectAtIndex:2];
    Card *card4 = (Card*)[tempCards objectAtIndex:3];
    Card *card5 = (Card*)[tempCards objectAtIndex:4];
    if(((card1.rank == card2.rank) && (card2.rank == card3.rank) && (card4.rank == card5.rank)) || ((card1.rank == card2.rank) && ((card3.rank == card4.rank) && (card4.rank == card5.rank)))){
        return YES;
    }
return NO;
}

//boolean flush
-(BOOL)isFlush{
    NSMutableArray *tempCards = [self.sortedByRank mutableCopy];
    Card *card1 = (Card*)[tempCards objectAtIndex:0];
    Card *card2 = (Card*)[tempCards objectAtIndex:1];
    Card *card3 = (Card*)[tempCards objectAtIndex:2];
    Card *card4 = (Card*)[tempCards objectAtIndex:3];
    Card *card5 = (Card*)[tempCards objectAtIndex:4];
    if((card1.suit == card2.suit) && (card2.suit == card3.suit) && (card3.suit == card4.suit) && (card4.suit == card5.suit)){
        return YES;
    }
return NO;
}

//boolean straight
-(BOOL)isStraight{
    NSMutableArray *tempCards = [self.sortedByRank mutableCopy];
    Card *card1 = (Card*)[tempCards objectAtIndex:0];
    Card *card2 = (Card*)[tempCards objectAtIndex:1];
    Card *card3 = (Card*)[tempCards objectAtIndex:2];
    Card *card4 = (Card*)[tempCards objectAtIndex:3];
    Card *card5 = (Card*)[tempCards objectAtIndex:4];
    if ((card2.rank == (card1.rank +1)) && (card3.rank == (card2.rank +1)) && (card4.rank == (card3.rank +1)) && (card5.rank == (card4.rank +1))){
        return YES;
    }
return NO;
}

-(BOOL)isThrees{
    //cards are sorted by rank 'sortedbyrank' (sorted array helpmethod above)
    //as there are only 5 card
    //then only card1,2,3 or 2,3,4 or 3,4,5 can return threes as yes    
    for (Card *card in self.allCards){
        NSMutableArray *tempCards = [self.sortedByRank mutableCopy];
        Card *card1 = (Card*)[tempCards objectAtIndex:0];
        Card *card2 = (Card*)[tempCards objectAtIndex:1];
        Card *card3 = (Card*)[tempCards objectAtIndex:2];
        Card *card4 = (Card*)[tempCards objectAtIndex:3];
        Card *card5 = (Card*)[tempCards objectAtIndex:4];
        if ((card1.rank == card2.rank && card2.rank == card3.rank) || (card2.rank == card3.rank && card3.rank == card4.rank) || (card3.rank == (card4.rank &&  card4.rank == card5.rank))){
            return YES;
        }        
    }
    
return NO;
}

-(BOOL)isTwoPair{
    for (Card *card in self.allCards){
        NSMutableArray *tempCards = [self.sortedByRank mutableCopy];
        Card *card1 = (Card*)[tempCards objectAtIndex:0];
        Card *card2 = (Card*)[tempCards objectAtIndex:1];
        Card *card3 = (Card*)[tempCards objectAtIndex:2];
        Card *card4 = (Card*)[tempCards objectAtIndex:3];
        Card *card5 = (Card*)[tempCards objectAtIndex:4];        
        //checks cards:
        // 1,2 & 3,4
        // 1,2 & 3,5
        // 1,2 & 4,5
        if (((card1.rank == card2.rank) && (card3.rank == card4.rank)) || ((card1.rank == card2.rank) && (card3.rank == card5.rank)) || ((card1.rank == card2.rank) && (card4.rank == card5.rank))) {
            return YES;
        }
        
        // 1,3 & 4,5
        // 1,3 & 2,4
        // 1,3 & 2,5
        if (((card1.rank == card3.rank) && (card4.rank == card5.rank)) || ((card1.rank == card3.rank) && (card2.rank == card4.rank)) || ((card1.rank == card3.rank) && (card2.rank == card5.rank))) {
            return YES;
        }
        
        // 1,4 & 2,5
        // 1,4 & 3,5
        // 1,4 & 2,3
        if (((card1.rank == card4.rank) && (card2.rank == card5.rank)) || ((card1.rank == card4.rank) && (card3.rank == card5.rank)) || ((card1.rank == card4.rank) && (card2.rank == card3.rank))) {
            return YES;
        }
        
        // 1,5 & 2,4
        // 1,5 & 2,3
        // 1,5 & 3,4
        if (((card1.rank == card5.rank) && (card2.rank == card4.rank)) || ((card1.rank == card5.rank) && (card2.rank == card3.rank)) || ((card1.rank == card5.rank) && (card3.rank == card4.rank))) {
            return YES;
        }
    }
return NO;
}


//boolean pair
-(BOOL)isPair{
    int pair = 0;
    for (Card *card in self.allCards){
        NSMutableArray *tempCards = [self.sortedByRank mutableCopy];
        int c = 0;
        int v = 1;        
        for (c = 0; c < [tempCards count]; c++){
            for(v = 1; v < [tempCards count]; v++){
                Card *cardSelected = (Card*)[tempCards objectAtIndex:c];
                Card *cardSelected2 = (Card*)[tempCards objectAtIndex:v];
                if (cardSelected.rank == cardSelected2.rank) {
                    pair = 1;
                    return pair;
                }else
                    pair = 0;
                return pair;
            }
        }
    }
    if (pair == 0){
        return NO;
    }else
        return YES;
}

//boolean high card
-(BOOL)isHigh{
    if (self.allCards.count >0){
        return YES;
    }
return NO;
}



//description method used to represent the hand as text
- (NSString *) description{
    NSString *describe = [NSString stringWithFormat:@"%d Cards in deck\n",[self.allCards count]];
	for(int d = 0; d < [self.allCards count];d++) {
		describe = [describe stringByAppendingFormat:@"%@\n",[[self.allCards objectAtIndex:d] description]];
	}
	return describe;
}
 

@end

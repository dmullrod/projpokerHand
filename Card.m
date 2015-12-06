//
//  Card.m
//  pokerNewCO6025
//
//  Created by DANIEL MULLAN on 27/07/2014.
//  Copyright (c) 2014 DANIEL MULLAN. All rights reserved.
//

#import "Card.h"
@interface Card(Private)
-(NSString *) rankAsString;
-(NSString *) suitAsString;
@end

@implementation Card  

@synthesize rank, suit;

- (id) initWithValue:(NSInteger) aRank suit:(Suit) aSuit{
    if(self = [super init]){
        self.rank = aRank;
        self.suit = aSuit;        
    }
    return self;
}


//suit string helpers
//convert suit selected to a string so it can be used
- (NSString *) suitAsString {
	switch (self.suit) {
		case Hearts:
			return @"♥";
			break;
		case Diamonds:
			return @"♦";
			break;
		case Spades:
			return @"♠";
			break;
		case Clubs:
			return @"♣";
			break;
		default:
			return nil;
			break;
	}
}

//rank string helpers
//convert rank selected to a string so it can be used
- (NSString *) rankAsString {
    
    if (self.rank == Ace){
        return @"Ace";
    }
    if (self.rank == Two){
        return @"Two";
    }
    if (self.rank == Three){
        return @"Three";
    }
    if (self.rank == Four){
        return @"Four";
    }
    if (self.rank == Five){
        return @"Five";
    }
    if (self.rank == Six){
        return @"Six";
    }
    if (self.rank == Seven){
        return @"Seven";
    }
    if (self.rank == Eight){
        return @"Eight";
    }
    if (self.rank == Nine){
        return @"Nine";
    }
    if (self.rank == Ten){
        return @"Ten";
    }
    if (self.rank == Jack){
        return @"Jack";
    }
    if (self.rank == Queen){
        return @"Queen";
    }    
    if (self.rank == King){
        return @"King";
    }else{
        return [NSString stringWithFormat:@"%d",self.rank];
    }
    
    
    /*
	switch (self.rank) {
		case Ace:
			return @"Aceeee";
			break;
        case Two:
			return @"Two";
			break;
        case Three:
			return @"Three";
			break;
        case Four:
			return @"Four";
			break;
        case Five:
			return @"Five";
			break;
        case Six:
			return @"Six";
			break;
        case Seven:
			return @"Seven";
			break;
        case Eight:
			return @"Eight";
			break;
        case Nine:
			return @"Nine";
			break;
        case Ten:
			return @"Ten";
			break;
		case Jack:
			return @"Jack";
			break;
		case Queen:
			return @"Queen";
			break;
		case King:
			return @"King";
			break;
		default:
			return [NSString stringWithFormat:@"%d",self.rank];
			break;
	}
     */
     
}


//description method used to represent the card as text
- (NSString *) description {
    
    //return the rank and suit of a card
	return [NSString stringWithFormat:@"%@ of %@",
			[self rankAsString],
			[self suitAsString]];
}

@end

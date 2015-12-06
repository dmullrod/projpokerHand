//
//  Hand.h
//  pokerNewCO6025
//
//  Created by DANIEL MULLAN on 27/07/2014.
//  Copyright (c) 2014 DANIEL MULLAN. All rights reserved.
//

#import "Card.h"

@interface Hand : NSObject

@property (nonatomic, strong) NSMutableArray *allCards;
-(NSInteger)cardsindeck;
-(NSArray *)sortedByRank;
-(NSArray *)sortedBySuit;
-(void)addcard:(Card*)card;
-(BOOL)isHigh;
-(BOOL)isPair;
-(BOOL)isTwoPair;
-(BOOL)isThrees;
-(BOOL)isStraight;
-(BOOL)isFlush;
-(BOOL)isFullHouse;
-(BOOL)isFours;
-(BOOL)isStraightFlush;
-(BOOL)isRoyalFlush;

@end

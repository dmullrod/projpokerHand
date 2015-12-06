//
//  Card.h
//  pokerNewCO6025
//
//  Created by DANIEL MULLAN on 27/07/2014.
//  Copyright (c) 2014 DANIEL MULLAN. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    Hearts,
    Diamonds,
    Spades,
    Clubs
} Suit;

#define Ace 1
#define Two 2
#define Three 3
#define Four 4
#define Five 5
#define Six 6
#define Seven 7
#define Eight 8
#define Nine 9
#define Ten 10
#define Jack 11
#define Queen 12
#define King 13


@interface Card : NSObject{
}

@property (nonatomic) NSInteger rank;
@property (nonatomic) Suit suit;

- (id) initWithValue:(NSInteger) aRank suit:(Suit) aSuit;

@end

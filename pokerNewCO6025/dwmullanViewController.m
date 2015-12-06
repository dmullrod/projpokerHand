//
//  dwmullanViewController.m
//  pokerNewCO6025
//
//  Created by DANIEL MULLAN on 27/07/2014.
//  Copyright (c) 2014 DANIEL MULLAN. All rights reserved.
//

#import "dwmullanViewController.h"

#import "Card.h"

@interface dwmullanViewController ()

@end

@implementation dwmullanViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.lbl6.hidden = YES;
    self.lblcard6.hidden = YES;
    self.lbl7.hidden = YES;
    self.lblcard7.hidden = YES;
    self.valueofHand.text = nil;
    self.cardsinDeck.text = nil;
    
    //create an instance of hand using the hand property set in the viewcontroller interface file
    self.hand = [[Hand alloc] init];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//initialise card class
//set the rank to be equal to segment index +1
//set the suit to be the currently selected index (suit enum allows for integer as it's an index)
//use the hand object property of the viewcontroller to add a card
//log the description of cards
//set a string to store the count of cards and set to a label's text
- (IBAction)temp:(id)sender {
    Card *card = [[Card alloc]init];
    card.rank = self.rankSeg.selectedSegmentIndex +1;
    card.suit = self.suitSeg.selectedSegmentIndex;
    [self.hand addcard:card];
    NSLog(@"Hand: %@",[self.hand description]);
    
    //set a string to store the count of cards and set to a label's text
    NSString *decknum = [NSString stringWithFormat:@"cards in deck:%d", [self.hand cardsindeck]];
    self.cardsinDeck.text = decknum;
    
    
    //create a copy of the hand array and set the corresponding cardlabel on the screen to be of the newly added object, based from the count of the array
    NSMutableArray *tempCardss = [self.hand.allCards mutableCopy];
    if ([self.hand cardsindeck] == 1){
        self.lblcard1.text = [NSString stringWithFormat:@"%@",[tempCardss objectAtIndex:0]];
    }
    if ([self.hand cardsindeck] == 2) {
        self.lblcard2.text = [NSString stringWithFormat:@"%@",[tempCardss objectAtIndex:1]];
    }
    if ([self.hand cardsindeck] == 3) {
        self.lblcard3.text = [NSString stringWithFormat:@"%@",[tempCardss objectAtIndex:2]];
    }
    if ([self.hand cardsindeck] == 4) {
        self.lblcard4.text = [NSString stringWithFormat:@"%@",[tempCardss objectAtIndex:3]];
    }
    if ([self.hand cardsindeck] == 5) {
        self.lblcard5.text = [NSString stringWithFormat:@"%@",[tempCardss objectAtIndex:4]];
    }
    //call method to check for boolean values which then display what hand the user has selected
    [self checkHands];
}


-(void)checkHands{
    if ([self.hand cardsindeck] == 5){
        if ([self.hand isRoyalFlush]){
            self.valueofHand.text = @"--Royal Flush--";
        }else if ([self.hand isStraightFlush]){
            self.valueofHand.text = @"--Straight Flush--";
        }else if ([self.hand isFours]){
            self.valueofHand.text = @"--Four of a kind--";
        }else if ([self.hand isFullHouse]){
            self.valueofHand.text = @"--Full House--";
        }else if ([self.hand isFlush]){
            self.valueofHand.text = @"--Flush--";
        }else if ([self.hand isStraight]){
            self.valueofHand.text = @"--Straight--";
        }else if ([self.hand isThrees]){
            self.valueofHand.text = @"--Three of a Kind--";
        }else if ([self.hand isTwoPair]){
            self.valueofHand.text = @"--Two Pair--";
        }else if ([self.hand isPair]){
            self.valueofHand.text = @"--Pair--";
        }else if ([self.hand isHigh]){
            self.valueofHand.text = @"--High Card--";
        }    
    }
}


//set for later functionality
- (IBAction)fivesevenSeg:(id)sender {
    if (self.fivesevenSeg.selectedSegmentIndex == 0){
        _lbl6.hidden = YES;
        _lblcard6.hidden = YES;
        _lbl7.hidden = YES;
        _lblcard7.hidden = YES;
    }else{
        _lbl6.hidden = NO;
        _lblcard6.hidden = NO;
        _lbl7.hidden = NO;
        _lblcard7.hidden = NO;
    }
}

//clears the array of all objects and initialise a new hand class so that the array can be used again
//sets labels to be blank
- (IBAction)clearButton:(id)sender {
    [self.hand setAllCards:nil];
    self.hand = [[Hand alloc] init];
    self.valueofHand.text = nil;
    self.cardsinDeck.text = nil;
    
    self.lblcard1.hidden = YES;
    self.lblcard2.hidden = YES;
    self.lblcard3.hidden = YES;
    self.lblcard4.hidden = YES;
    self.lblcard5.hidden = YES;    
}

@end

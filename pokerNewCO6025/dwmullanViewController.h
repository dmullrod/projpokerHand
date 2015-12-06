//
//  dwmullanViewController.h
//  pokerNewCO6025
//
//  Created by DANIEL MULLAN on 27/07/2014.
//  Copyright (c) 2014 DANIEL MULLAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Hand.h"

@interface dwmullanViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *suitSeg;
@property (weak, nonatomic) IBOutlet UISegmentedControl *rankSeg;
@property (weak, nonatomic) IBOutlet UISegmentedControl *fivesevenSeg;
@property (weak, nonatomic) IBOutlet UILabel *lblcard1;
@property (weak, nonatomic) IBOutlet UILabel *lblcard2;
@property (weak, nonatomic) IBOutlet UILabel *lblcard3;
@property (weak, nonatomic) IBOutlet UILabel *lblcard4;
@property (weak, nonatomic) IBOutlet UILabel *lblcard5;
@property (weak, nonatomic) IBOutlet UILabel *lblcard6;
@property (weak, nonatomic) IBOutlet UILabel *lblcard7;
@property (weak, nonatomic) IBOutlet UILabel *lbl6;
@property (weak, nonatomic) IBOutlet UILabel *lbl7;
@property (weak, nonatomic) IBOutlet UILabel *valueofHand;
@property (weak, nonatomic) IBOutlet UILabel *cardsinDeck;

@property (nonatomic, strong) Hand *hand;

- (IBAction)temp:(id)sender;
- (IBAction)fivesevenSeg:(id)sender;
- (IBAction)clearButton:(id)sender;


@end

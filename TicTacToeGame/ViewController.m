//
//  ViewController.m
//  TicTacToeGame
//
//  Created by Caleb Talbot on 5/26/16.
//  Copyright © 2016 Caleb Talbot. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
@property (weak, nonatomic) IBOutlet UIButton *buttonSix;
@property (weak, nonatomic) IBOutlet UIButton *buttonSeven;
@property (weak, nonatomic) IBOutlet UIButton *buttonEight;
@property (weak, nonatomic) IBOutlet UIButton *buttonNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property NSString *whoWon;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo1;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo2;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo3;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo4;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo5;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo6;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo7;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo8;
@property NSArray *winningCombos;
@property NSMutableString *potentialWinnerTitles;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.whichPlayerLabel.text = @"X";
    self.winningCombos = @[self.winningCombo1, self.winningCombo2, self.winningCombo3, self.winningCombo4, self.winningCombo5, self.winningCombo6, self. winningCombo7, self.winningCombo8];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onButtonTapped:(UIButton *)button {
    
    // assigns label state to button
    // & changes label state
    // & disables button
    
    [button setEnabled:NO];
    
    [button setTitle:self.whichPlayerLabel.text forState:UIControlStateDisabled];

    if ([self.whichPlayerLabel.text.lowercaseString isEqualToString:@"x"]) {
        [button setTitleColor:[UIColor blueColor] forState:UIControlStateDisabled];
    } else  {
        [button setTitleColor:[UIColor redColor] forState:UIControlStateDisabled];
        
    }
    
    
    if ([self.whichPlayerLabel.text.lowercaseString isEqualToString:@"x"]) {
        self.whichPlayerLabel.text = @"O";
    } else {
        self.whichPlayerLabel.text = @"X";
    }
    [self didPlayerWin:nil];
}

-(void)didPlayerWin:(id)sender {
    for (NSArray *collection in self.winningCombos) {
        
        self.potentialWinnerTitles = [[NSMutableString alloc] init];
        for (int i = 0; i < collection.count; i++) {
            UIButton *currentButton = collection[i];
            NSString *titleOfButton = [currentButton currentTitle];
            [self.potentialWinnerTitles appendString:[NSString stringWithFormat: @"%@", titleOfButton]];
        };
        if ([self.potentialWinnerTitles containsString:@"XXX"]) {
            self.whoWon = @"X won the game!";
        } else if ([self.potentialWinnerTitles containsString:@"OOO"]) {
            self.whoWon = @"O won the game!";
        } else {
            self.whoWon = @"";
        }
    };
    NSLog(@"%@ potential winner titles", self.potentialWinnerTitles);
}

@end

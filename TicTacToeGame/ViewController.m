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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.whichPlayerLabel.text = @"X";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onButtonTapped:(UIButton *)button {

    // assigns label state to button
    // & changes label state
    // & disables button
    
    [button  setEnabled:NO];
    [button setTitle:self.whichPlayerLabel.text forState:UIControlStateDisabled];
    if ([self.whichPlayerLabel.text.lowercaseString isEqualToString:@"x"]) {
        self.whichPlayerLabel.text = @"O";
    } else {
        self.whichPlayerLabel.text = @"X";
    }
    
    if ([[button currentTitle].lowercaseString isEqualToString:@"x"]) {
        button.tintColor = [UIColor blueColor];
    } else {
        button.tintColor = [UIColor redColor];
    }
    
    
    
    

}

@end

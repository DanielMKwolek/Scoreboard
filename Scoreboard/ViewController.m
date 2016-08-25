//
//  ViewController.m
//  Scoreboard
//
//  Created by Daniel Kwolek on 8/24/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "ViewController.h"
#import "Foundation/foundation.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *leftScoreButton;
@property (strong, nonatomic) IBOutlet UIButton *rightScoreButton;
@property (nonatomic)NSInteger leftScore;
@property (nonatomic)NSInteger rightScore;


- (IBAction)buttonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *usLabel;
@property (strong, nonatomic) IBOutlet UILabel *themLabel;
@property (strong, nonatomic) IBOutlet UILabel *piOne;
@property (strong, nonatomic) IBOutlet UILabel *piTwo;
@property (strong, nonatomic) IBOutlet UIButton *resetScoreButton;
- (IBAction)resetScores:(UIButton *)sender;


@end


@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.leftScore = 0;
    [self.leftScoreButton setTitle:@"0" forState:UIControlStateNormal];
    
    self.rightScore = 0;
    [self.rightScoreButton setTitle:@"0" forState:UIControlStateNormal];
    
    [self.usLabel setText:@"Us"];
    [self.themLabel setText:@"Them"];
    [self.piOne setText:[NSString stringWithFormat:@"π"]];
    [self.piTwo setText:[NSString stringWithFormat:@"π"]];
    [self.resetScoreButton setTitle:@"Reset Score" forState:UIControlStateNormal];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(UIButton *)sender {
    
    if (sender == self.leftScoreButton)
    {
    [self.leftScoreButton setTitle:[NSString stringWithFormat:@"%@", @(++self.leftScore)] forState:UIControlStateNormal];
    }
    
    if (sender == self.rightScoreButton)
    {
    [self.rightScoreButton setTitle:[NSString stringWithFormat:@"%@", @(++self.rightScore)] forState:UIControlStateNormal];
    }
}


- (IBAction)resetScores:(UIButton *)sender {
    [self.leftScoreButton setTitle:@"0" forState:UIControlStateNormal];
    self.rightScore = 0;
    
    [self.rightScoreButton setTitle:@"0" forState:UIControlStateNormal];
    self.leftScore = 0;
}
@end

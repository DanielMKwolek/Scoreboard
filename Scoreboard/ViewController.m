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
- (IBAction)resetScores:(UIButton *)sender;


@end


@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.leftScore = 0;
    self.rightScore = 0;
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)updateview
{
        [self.leftScoreButton setTitle:[NSString stringWithFormat:@"%@", @(_leftScore)]  forState:UIControlStateNormal];
        [self.rightScoreButton setTitle:[NSString stringWithFormat:@"%@", @(_rightScore)] forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(UIButton *)sender {
    
    if (sender == self.leftScoreButton)
    {
        _leftScore++;
    }
    
    if (sender == self.rightScoreButton)
    {
        _rightScore++;
    }
    
    [self updateview];
}


- (IBAction)resetScores:(UIButton *)sender {

    self.rightScore = 0;
    self.leftScore = 0;
    [self updateview];
}
@end

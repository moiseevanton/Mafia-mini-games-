//
//  GameViewController.m
//  Mafia mini-games
//
//  Created by Anton Moiseev on 2016-05-11.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    self.restartButton.hidden = YES;
    
    [self.restartButton addTarget:self action:@selector(restartButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.one addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.two addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.three addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.four addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.five addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.six addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.seven addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.eight addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.nine addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.ten addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.notificationLabel1 setTextAlignment:NSTextAlignmentCenter];
    [self.notificationLabel2 setTextAlignment:NSTextAlignmentCenter];
    [self.rulesLabel setTextAlignment:NSTextAlignmentCenter];
    self.notificationLabel2.text = @" ";
    self.notificationLabel2.adjustsFontSizeToFitWidth = YES;
    
    if (self.isMafia) {
        
        self.ourPlayer = [[Player alloc] initWithType:@"Mafia"];
        self.ourTarget = [[Target alloc] init];
        self.notificationLabel1.text = @"You've chosen to be a member of Mafia!";
        self.notificationLabel2.text = [NSString stringWithFormat:@"You have %d targets to go!", self.ourTarget.numberOfTargets];
        self.rulesLabel.text = @"Select a number from 1 to 5:";
        self.six.hidden = YES;
        self.seven.hidden = YES;
        self.eight.hidden = YES;
        self.nine.hidden = YES;
        self.ten.hidden = YES;
    } else {
        
        self.ourPlayer = [[Player alloc] initWithType:@"Sheriff"];
        self.ourTarget = [[Target alloc] init];
        self.notificationLabel1.text = @"You've chosen to be a Sheriff!";
        self.notificationLabel2.text = [NSString stringWithFormat:@"You have %d targets to go!", self.ourTarget.numberOfTargets];
        self.rulesLabel.text = @"Select a number from 1 to 10:";
        
    }
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)buttonPressed:(id)sender {
    
    if ([self.ourPlayer.type isEqualToString:@"Mafia"]) {
        [self.ourTarget randomizeSuccessValueWith:5];
    } else if ([self.ourPlayer.type isEqualToString:@"Sheriff"]) {
        [self.ourTarget randomizeSuccessValueWith:10];
    }
    
    if (sender == self.one) {
        self.playersChoice = 1;
    } else if (sender == self.two) {
        self.playersChoice = 2;
    } else if (sender == self.three) {
        self.playersChoice = 3;
    } else if (sender == self.four) {
        self.playersChoice = 4;
    } else if (sender == self.five) {
        self.playersChoice = 5;
    } else if (sender == self.six) {
        self.playersChoice = 6;
    } else if (sender == self.seven) {
        self.playersChoice = 7;
    } else if (sender == self.eight) {
        self.playersChoice = 8;
    } else if (sender == self.nine) {
        self.playersChoice = 9;
    } else if (sender == self.ten) {
        self.playersChoice = 10;
    }
    
    if (self.playersChoice == self.ourTarget.successValue) {
        self.ourTarget.numberOfTargets -= 1;
        self.notificationLabel2.text = [NSString stringWithFormat:@"Great job, %@, you hit the target! You have %d targets to go!", self.ourPlayer.type, self.ourTarget.numberOfTargets];
        if (self.ourTarget.numberOfTargets == 0) {
            self.notificationLabel2.text = @"You win! Do you want to restart?";
            self.restartButton.hidden = NO;
            self.one.hidden = YES;
            self.two.hidden = YES;
            self.three.hidden = YES;
            self.four.hidden = YES;
            self.five.hidden = YES;
            self.six.hidden = YES;
            self.seven.hidden = YES;
            self.eight.hidden = YES;
            self.nine.hidden = YES;
            self.ten.hidden = YES;

            }
        } else {
            self.notificationLabel2.text = [NSString stringWithFormat:@"You've missed,%@, %d targets to go!", self.ourPlayer.type, self.ourTarget.numberOfTargets];
        }
    
}

- (void)restartButtonPressed:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end

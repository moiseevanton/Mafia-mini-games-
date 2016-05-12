//
//  GameViewController.h
//  Mafia mini-games
//
//  Created by Anton Moiseev on 2016-05-11.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Target.h"
#import "Player.h"

@interface GameViewController: UIViewController

@property (weak, nonatomic) IBOutlet UIButton *one;
@property (weak, nonatomic) IBOutlet UIButton *two;
@property (weak, nonatomic) IBOutlet UIButton *three;
@property (weak, nonatomic) IBOutlet UIButton *four;
@property (weak, nonatomic) IBOutlet UIButton *five;
@property (weak, nonatomic) IBOutlet UIButton *six;
@property (weak, nonatomic) IBOutlet UIButton *seven;
@property (weak, nonatomic) IBOutlet UIButton *eight;
@property (weak, nonatomic) IBOutlet UIButton *nine;
@property (weak, nonatomic) IBOutlet UIButton *ten;
@property (weak, nonatomic) IBOutlet UILabel *rulesLabel;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel1;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel2;
@property (weak, nonatomic) IBOutlet UIButton *restartButton;

@property Player *ourPlayer;
@property Target *ourTarget;
@property (nonatomic) BOOL isMafia;
@property int playersChoice;

- (IBAction)buttonPressed:(id)sender;

-(IBAction)restartButtonPressed:(id)sender;

@end

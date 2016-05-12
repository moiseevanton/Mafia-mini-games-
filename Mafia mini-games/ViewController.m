//
//  ViewController.m
//  Mafia mini-games
//
//  Created by Anton Moiseev on 2016-05-11.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "ViewController.h"
#import "GameViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *mafiaButton;

@property (weak, nonatomic) IBOutlet UIButton *sheriffButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"Sheriff"]) {
        
        
        GameViewController *gvc = segue.destinationViewController;
        
        gvc.isMafia = NO;
        
    }
    
    if ([segue.identifier isEqualToString:@"Mafia"]) {
        
        GameViewController *gvc = segue.destinationViewController;
        
        gvc.isMafia = YES;
        
    }
    
    
    
    
}

@end

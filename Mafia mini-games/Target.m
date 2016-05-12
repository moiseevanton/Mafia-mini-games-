//
//  Target.m
//  Mafia mini-games
//
//  Created by Anton Moiseev on 2016-05-11.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "Target.h"

@implementation Target

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        _successValue = 0;
        _numberOfTargets = 5;
        
    }
    return self;
}

- (void)randomizeSuccessValueWith:(int)number {
    
    self.successValue = 1 + arc4random_uniform(number);
    
}

@end

//
//  Player.m
//  Mafia mini-games
//
//  Created by Anton Moiseev on 2016-05-11.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init {
    
    return [self initWithType:@""];
    
}

- (instancetype)initWithType:(NSString *)type {
    
    self = [super init];
    
    if (self) {
        
        _type = type;
        
    }
    return self;
}

@end

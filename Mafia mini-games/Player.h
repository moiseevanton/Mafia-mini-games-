//
//  Player.h
//  Mafia mini-games
//
//  Created by Anton Moiseev on 2016-05-11.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSString *type;

- (instancetype)initWithType:(NSString *)type;

@end

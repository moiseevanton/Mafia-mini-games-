//
//  Target.h
//  Mafia mini-games
//
//  Created by Anton Moiseev on 2016-05-11.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Target : NSObject

@property int successValue;

@property int numberOfTargets;

- (void)randomizeSuccessValueWith:(int)number;

@end

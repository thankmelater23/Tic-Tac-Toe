//
//  Player.m
//  tic tac toe
//
//  Created by Andre on 12/20/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import "Player.h"

@implementation Player

@synthesize buttn, scoreButton, score;

-(id)init
{
    self = [super init];
    score = 0;
    return self;
}
@end

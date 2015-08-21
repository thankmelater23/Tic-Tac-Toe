//
//  Player.h
//  tic tac toe
//
//  Created by Andre on 12/20/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
{
    @public
    UIImage *image;
    BOOL *playerTurn;
    NSString *name;
    int score;
    NSNumber *placeHolder;
    
    //Player Button
    IBOutlet UIButton *buttn;
    IBOutlet UIButton *scoreButton;
}
@property (nonatomic, retain) UIButton *buttn;
@property (nonatomic, retain) UIButton *scoreButton;
@property (nonatomic) int score;
@end

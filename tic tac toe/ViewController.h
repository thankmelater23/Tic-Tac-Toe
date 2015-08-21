//
//  ViewController.h
//  tic tac toe
//
//  Created by Andre on 12/19/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "Resources.h"



@interface ViewController : UIViewController
{
    //Players
    Player *player1;
    Player *player2;
    
    
    UIImage *playerOneImage;
    UIImage *playerTwoImage;
    
    
    //Array for buttons
    NSMutableArray *buttons;
    NSMutableArray *boxes;
    
    //Buttons
    IBOutlet UIButton *start;
    
    IBOutlet UIButton *button0;
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    
    NSNumber *box0;
    NSNumber *box1;
    NSNumber *box2;
    NSNumber *box3;
    NSNumber *box4;
    NSNumber *box5;
    NSNumber *box6;
    NSNumber *box7;
    NSNumber *box8;
    
    IBOutlet UIButton *player1But;
    IBOutlet UIButton *player2But;
    
    IBOutlet UIButton *player1ScoreBut;
    IBOutlet UIButton *player2ScoreBut;
    
    //Image
    UIImage *image;
    IBOutlet UIButton *playerOneCharChooser;
    IBOutlet UIButton *playerTwoCharChooser;
    
    
}

@property(retain) NSMutableArray *buttons, *boxes;
@property(retain) Player *player1, *player2;


-(IBAction)buttonSelected:(id)sender;
-(Player*) turn;
-(void)win:(Player *)player;
-(void)clear;
-(void)buttonsInArray;
- (BOOL)image:(UIImage *)image1 isEqualTo:(UIImage *)image2;
-(IBAction)charChooser:(id)sender;
-(void)scoreText;
@end

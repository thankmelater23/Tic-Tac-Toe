//
//  ViewController.m
//  tic tac toe
//
//  Created by Andre on 12/19/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

//System Methods
- (void)viewDidLoad
{
  [super viewDidLoad];
  //Allocating Vars
  player1 = [[Player alloc]init];
  player2 = [[Player alloc]init];

  buttons = [[NSMutableArray alloc]initWithCapacity:9];
  [self buttonsInArray];

  player1->playerTurn   = NO;
  player2->playerTurn   = NO;

  player1->image = imageHolderPlayer1;
  player2->image = imageHolderPlayer2;

  player1->name = @"Player 1";
  player2->name = @"Player 2";
  player1But.highlighted = YES;

  player1->placeHolder = [[NSNumber alloc]initWithInt:1];
  player2->placeHolder = [[NSNumber alloc]initWithInt:2];;

  player1.buttn = player1But;
  player2.buttn = player2But;

  player1.scoreButton = player1ScoreBut;
  player2.scoreButton = player2ScoreBut;

  firstCharChose = NO;

  GoAvailable = NO;

  [self clear];

}

//@synthesize

@synthesize player1, player2, buttons, boxes;

//
- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


//Game Methods
-(IBAction)buttonSelected:(id)sender
{
  UIButton *button = sender;

  if (![self image:button.currentBackgroundImage isEqualTo:player1->image] && ![self image:button.currentBackgroundImage isEqualTo:player2->image])
  {
    Player *player = [self turn];
      [button setBackgroundImage:player->image forState:UIControlStateNormal];
//    [button setImage:player->image forState:UIControlStateNormal];

    if ([button isEqual: button0])
    {
      box0 = player->placeHolder;
    }

    if ([button isEqual: button1])
    {
      box1 = player->placeHolder;
    }

    if ([button isEqual: button2])
    {
      box2 = player->placeHolder;
    }

    if ([button isEqual: button3])
    {
      box3 = player->placeHolder;
    }

    if ([button isEqual: button4])
    {
      box4 = player->placeHolder;
    }

    if ([button isEqual: button5])
    {
      box5 = player->placeHolder;
    }

    if ([button isEqual: button6])
    {
      box6 = player->placeHolder;
    }

    if ([button isEqual: button7])
    {
      box7 = player->placeHolder;
    }

    if ([button isEqual: button8])
    {
      box8 = player->placeHolder;
    }


    [self win:player];
    [self scoreText];
  }

}

-(void)win:(Player *)player
{
  Player *curPlayer = player;
  Player *otherPlayer;

  if(curPlayer == player1)
  {
    otherPlayer = player2;
  }
  else
  {
    otherPlayer = player1;
  }
  //Put algorythom to check if a player won

  //0,1,2
  if (box0 == player->placeHolder && box1 == player->placeHolder && box2 == player->placeHolder)
  {
    //Win
    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"CONGRATS" message:[NSString stringWithFormat: @"%@ WINS", curPlayer->name] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    curPlayer->playerTurn = YES;
    otherPlayer->playerTurn = NO;

    curPlayer->buttn.highlighted = YES;
    otherPlayer->buttn.highlighted = NO;
    curPlayer->score++;
    return;
  }

  //0,3,6
  if (box0 == player->placeHolder && box3 == player->placeHolder && box6 == player->placeHolder)
  {
    //Win
    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"CONGRATS" message:[NSString stringWithFormat: @"%@ WINS", curPlayer->name] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    curPlayer->playerTurn = YES;
    otherPlayer->playerTurn = NO;

    curPlayer->buttn.highlighted = YES;
    otherPlayer->buttn.highlighted = NO;
    curPlayer->score++;
    return;
  }

  //0,4,8
  if (box0 == player->placeHolder && box4 == player->placeHolder && box8 == player->placeHolder)
  {
    //Win
    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"CONGRATS" message:[NSString stringWithFormat: @"%@ WINS", curPlayer->name] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    curPlayer->playerTurn = YES;
    otherPlayer->playerTurn = NO;

    curPlayer->buttn.highlighted = YES;
    otherPlayer->buttn.highlighted = NO;
    curPlayer->score++;
    return;
  }

  //1,4,7
  if (box1 == player->placeHolder && box4 == player->placeHolder && box7 == player->placeHolder)
  {
    //Win
    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"CONGRATS" message:[NSString stringWithFormat: @"%@ WINS", curPlayer->name] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    curPlayer->playerTurn = YES;
    otherPlayer->playerTurn = NO;

    curPlayer->buttn.highlighted = YES;
    otherPlayer->buttn.highlighted = NO;
    curPlayer->score++;
    return;
  }

  //2,5,8
  if (box2 == player->placeHolder && box5 == player->placeHolder && box8 == player->placeHolder)
  {
    //Win
    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"CONGRATS" message:[NSString stringWithFormat: @"%@ WINS", curPlayer->name] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    curPlayer->playerTurn = YES;
    otherPlayer->playerTurn = NO;

    curPlayer->buttn.highlighted = YES;
    otherPlayer->buttn.highlighted = NO;
    curPlayer->score++;
    return;
  }

  //2,4,6
  if (box2 == player->placeHolder && box4 == player->placeHolder && box6 == player->placeHolder)
  {
    //Win
    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"CONGRATS" message:[NSString stringWithFormat: @"%@ WINS", curPlayer->name] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    curPlayer->playerTurn = YES;
    otherPlayer->playerTurn = NO;

    curPlayer->buttn.highlighted = YES;
    otherPlayer->buttn.highlighted = NO;
    curPlayer->score++;
    return;
  }

  //3,4,5
  if (box3 == player->placeHolder && box4 == player->placeHolder && box5 == player->placeHolder)
  {
    //Win
    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"CONGRATS" message:[NSString stringWithFormat: @"%@ WINS", curPlayer->name] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    curPlayer->playerTurn = YES;
    otherPlayer->playerTurn = NO;

    curPlayer->buttn.highlighted = YES;
    otherPlayer->buttn.highlighted = NO;
    curPlayer->score++;
    return;
  }

  //6,7,8
  if (box6 == player->placeHolder && box7 == player->placeHolder && box8 == player->placeHolder)
  {
    //Win
    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"CONGRATS" message:[NSString stringWithFormat: @"%@ WINS", curPlayer->name] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    curPlayer->playerTurn = YES;
    otherPlayer->playerTurn = NO;

    curPlayer->buttn.highlighted = YES;
    otherPlayer->buttn.highlighted = NO;
    curPlayer->score++;
    return;
  }

  //DRAW
  NSNumber *emptyBox = [NSNumber numberWithInt:0];
  if(![box0 isEqualToNumber:emptyBox] && ![box1 isEqualToNumber:emptyBox] &&
     ![box2 isEqualToNumber:emptyBox] && ![box3 isEqualToNumber:emptyBox] &&
     ![box4 isEqualToNumber:emptyBox] && ![box5 isEqualToNumber:emptyBox] &&
     ![box6 isEqualToNumber:emptyBox] && ![box7 isEqualToNumber:emptyBox] &&
     ![box8 isEqualToNumber:emptyBox])
  {


    /*(box0 != emptyBox && box1 != emptyBox && box2 != emptyBox && box3 != emptyBox && box4 != emptyBox && box5 != emptyBox && box6 != emptyBox && box7 != emptyBox && box8 != emptyBox)*/
    //Win

    UIAlertView *winningAlert = [[UIAlertView alloc]initWithTitle:@"DRAW"
                                                          message:[NSString stringWithFormat: @"DRAW GAME"] delegate:nil cancelButtonTitle:@"New Game" otherButtonTitles:nil];
    [winningAlert show];
    [self clear];
    return;
  }

}

-(void)clear
{
  UIImage *img = [UIImage imageNamed:@"blank.png"];
  NSNumber *emptyBox = [NSNumber numberWithInt:0];

  for (int i = 0; i <= 8; ++i)
  {
    [[buttons objectAtIndex:i] setImage:img forState:UIControlStateNormal];
  }

  box0 = emptyBox;
  box1 = emptyBox;
  box2 = emptyBox;
  box3 = emptyBox;
  box4 = emptyBox;
  box5 = emptyBox;
  box6 = emptyBox;
  box7 = emptyBox;
  box8 = emptyBox;
}

-(void)buttonsInArray
{
  [buttons addObject:button0];
  [buttons addObject:button1];
  [buttons addObject:button2];
  [buttons addObject:button3];
  [buttons addObject:button4];
  [buttons addObject:button5];
  [buttons addObject:button6];
  [buttons addObject:button7];
  [buttons addObject:button8];

  [boxes addObject:box0];
  [boxes addObject:box1];
  [boxes addObject:box2];
  [boxes addObject:box3];
  [boxes addObject:box4];
  [boxes addObject:box5];
  [boxes addObject:box6];
  [boxes addObject:box7];
  [boxes addObject:box8];

  for (int i = 0; i <= [boxes count]; ++i)
  {
    [[[boxes objectAtIndex:i]alloc]initWithInt:0];
  }

}

-(Player*) turn
{

  if (player1->playerTurn == NO && player2->playerTurn == NO)
  {
    player1->playerTurn = NO;
    player2->playerTurn = YES;
    player1But.highlighted = NO;
    player2But.highlighted = YES;
    return player1;
  }

  if(player1->playerTurn == YES)
  {
    player1->playerTurn = NO;
    player2->playerTurn = YES;
    player1But.highlighted = NO;
    player2But.highlighted = YES;
    return player1;
  }
  else
  {
    player1->playerTurn = YES;
    player2->playerTurn = NO;
    player1But.highlighted = YES;
    player2But.highlighted = NO;
    return player2;
  }
}

- (BOOL)image:(UIImage *)image1 isEqualTo:(UIImage *)image2
{
  NSData *data1 = UIImagePNGRepresentation(image1);
  NSData *data2 = UIImagePNGRepresentation(image2);

  return [data1 isEqual:data2];
}


-(void)scoreText
{

  [player1->scoreButton setTitle:[NSString stringWithFormat:@"%i", player1->score] forState:UIControlStateNormal];

  [player2->scoreButton setTitle:[NSString stringWithFormat:@"%i", player2->score] forState:UIControlStateNormal];
}
@end

//
//  ProfileChooserViewController.m
//  tic tac toe
//
//  Created by Andre on 12/27/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import "ProfileChooserViewController.h"

@interface ProfileChooserViewController ()

@end

@implementation ProfileChooserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        imageHolderPlayer1 = [[UIImage alloc]init];
        imageHolderPlayer2 = [[UIImage alloc]init];
        firstCharChose = NO;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self ChooseImageForPlayer];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)charChooser:(id)sender
{
    [self ChooseImageForPlayer];
    
    UIButton *buttonSeder = sender;
    
    if (firstCharChose == NO)
    {
      imageHolderPlayer1 = buttonSeder.currentBackgroundImage;
        firstCharChose = YES;
        return;
    }
    
    else
    {
        imageHolderPlayer2 = buttonSeder.currentBackgroundImage;
        GoAvailable = YES;;
    }
    
}

-(void) ChooseImageForPlayer
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Player choose character" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}
-(IBAction) isGoAvaliable
{
    if (imageHolderPlayer1 == nil)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Player1 choose character" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    
    else if (imageHolderPlayer2 == nil)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Player2 choose character" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    
    else//Goto Next Screen
    {

    }
}
@end

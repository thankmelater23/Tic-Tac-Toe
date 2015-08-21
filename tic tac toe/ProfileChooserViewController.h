//
//  ProfileChooserViewController.h
//  tic tac toe
//
//  Created by Andre on 12/27/12.
//  Copyright (c) 2012 HnG Studios. All rights reserved.
//

#import "ViewController.h"
#import "Resources.h"

@interface ProfileChooserViewController : UIViewController
{
    __weak IBOutlet UIButton *goButton;
    
}

-(IBAction)charChooser:(id)sender;
-(void) ChooseImageForPlayer;
-(IBAction) isGoAvaliable;

@end

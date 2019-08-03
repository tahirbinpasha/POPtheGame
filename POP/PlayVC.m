//
//  PlayVC.m
//  POP
//
//  Created by Macbook on 28/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "PlayVC.h"

@interface PlayVC ()
@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b5;
@property (weak, nonatomic) IBOutlet UIButton *b6;
@property (weak, nonatomic) IBOutlet UIButton *b7;
@property (weak, nonatomic) IBOutlet UIButton *b8;
@property (weak, nonatomic) IBOutlet UIButton *b9;
@property (weak, nonatomic) IBOutlet UIButton *b10;
@property (weak, nonatomic) IBOutlet UIButton *b11;
@property (weak, nonatomic) IBOutlet UIButton *b12;
@property (weak, nonatomic) IBOutlet UIButton *b13;
@property (weak, nonatomic) IBOutlet UIButton *b14;
@property (weak, nonatomic) IBOutlet UIButton *b15;
@property (weak, nonatomic) IBOutlet UIButton *b16;

@end

@implementation PlayVC
{
    NSMutableDictionary * buttonDictionary;
    NSMutableArray * buttonsArray;
    
    int counter;
    
    NSString * sb1;
    NSString * sb2;
    NSString * sb3;
    NSString * sb4;
    NSString * sb5;
    NSString * sb6;
    NSString * sb7;
    NSString * sb8;
    NSString * sb9;
    NSString * sb10;
    NSString * sb11;
    NSString * sb12;
    NSString * sb13;
    NSString * sb14;
    NSString * sb15;
    NSString * sb16;
    
    
    NSMutableArray * sb;
    
    NSString * player;
    
    
    BOOL win;
}

@synthesize b1;
@synthesize b2;
@synthesize b3;
@synthesize b4;
@synthesize b5;
@synthesize b6;
@synthesize b7;
@synthesize b8;
@synthesize b9;
@synthesize b10;
@synthesize b11;
@synthesize b12;
@synthesize b13;
@synthesize b14;
@synthesize b15;
@synthesize b16;

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    self.navigationController.navigationBar.hidden = false;
    
    [self reset];
    
}

- (IBAction)b1:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b1 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b1.enabled = false;
        sb1 = @"p";
         [sb setObject:@"p" atIndexedSubscript:0];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:1 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b1 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b1.enabled = false;
         [sb setObject:@"o" atIndexedSubscript:0];
        sb1 = @"o";
        player = @"p";
        
        win = [self checkPlayerForWin2:1 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
    
    
}

- (IBAction)b2:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b2 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b2.enabled = false;
        sb2 = @"p";
        [sb setObject:@"p" atIndexedSubscript:1];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:2 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b2 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b2.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:1];
        sb2 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:2 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
    
}

- (IBAction)b3:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b3 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b3.enabled = false;
        sb3 = @"p";
        [sb setObject:@"p" atIndexedSubscript:2];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:3 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b3 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b3.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:2];
        sb3 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:3 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b4:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b4 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b4.enabled = false;
        sb4 = @"p";
        [sb setObject:@"p" atIndexedSubscript:3];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:4 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b4 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b4.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:3];
        sb4 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:4 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b5:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b5 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b5.enabled = false;
        sb5 = @"p";
        [sb setObject:@"p" atIndexedSubscript:4];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:5 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b5 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b5.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:4];
        sb5 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:5 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b6:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b6 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b6.enabled = false;
        sb6 = @"p";
        [sb setObject:@"p" atIndexedSubscript:5];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:6 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b6 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b6.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:5];
        sb6 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:6];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b7:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b7 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b7.enabled = false;
        sb7 = @"p";
        [sb setObject:@"p" atIndexedSubscript:6];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:7 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b7 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b7.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:6];
        sb7 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:7 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b8:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b8 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b8.enabled = false;
        sb8 = @"p";
        [sb setObject:@"p" atIndexedSubscript:7];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:8 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b8 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b8.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:7];
        sb8 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:8 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b9:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b9 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b9.enabled = false;
        sb9 = @"p";
        [sb setObject:@"p" atIndexedSubscript:8];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:9 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b9 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b9.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:8];
        sb9 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:9 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b10:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b10 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b10.enabled = false;
        sb10 = @"p";
        [sb setObject:@"p" atIndexedSubscript:9];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:10 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b10 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b10.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:9];
        sb10 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:10 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b11:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b11 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b11.enabled = false;
        sb11 = @"p";
        [sb setObject:@"p" atIndexedSubscript:10];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:11 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b11 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b11.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:10];
        sb11 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:11 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b12:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b12 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b12.enabled = false;
        sb12 = @"p";
        [sb setObject:@"p" atIndexedSubscript:11];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:12 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b12 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b12.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:11];
        sb12 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:12 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b13:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b13 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b13.enabled = false;
        sb13 = @"p";
        [sb setObject:@"p" atIndexedSubscript:12];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:13 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b13 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b13.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:12];
        sb13 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:13 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b14:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b14 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b14.enabled = false;
        sb14 = @"p";
        [sb setObject:@"p" atIndexedSubscript:13];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:14 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b14 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b14.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:13];
        sb14 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:14 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b15:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b15 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b15.enabled = false;
        sb15 = @"p";
        [sb setObject:@"p" atIndexedSubscript:14];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:15 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b15 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b15.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:14];
        sb15 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:15 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}

- (IBAction)b16:(id)sender
{
    counter = counter+1;
    if ([player isEqualToString:@"p"])
    {
        [b16 setBackgroundImage:[UIImage imageNamed:@"p"] forState:UIControlStateNormal];
        b16.enabled = false;
        sb16 = @"p";
        [sb setObject:@"p" atIndexedSubscript:15];
        player = @"o";
        [self disableAll];
        
        win = [self checkPlayerForWin:16 ];
        
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self computerTurn];
            }
        }
    }
    else
    {
        [b16 setBackgroundImage:[UIImage imageNamed:@"o"] forState:UIControlStateNormal];
        b16.enabled = false;
        [sb setObject:@"o" atIndexedSubscript:15];
        sb16 = @"o";
        player = @"p";
        win = [self checkPlayerForWin2:16 ];
        if (win)
        {
            [self showWinAlert];
        }
        else
        {
            if (counter == 16)
            {
                [self showLoseAlert];
            }
            else
            {
                [self enableForPlayer];
            }
        }
    }
}


-(void) showWinAlert
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Congratulations"
                                 message:@"You won"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Play Again"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                    [self.navigationController popViewControllerAnimated:YES];
                                }];
  
    
    [alert addAction:yesButton];

    [self presentViewController:alert animated:YES completion:nil];
}


-(void) showLoseAlert
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Game Over"
                                 message:@"You lost..."
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Try Again"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                    [self.navigationController popViewControllerAnimated:YES];
                                }];
    
    
    [alert addAction:yesButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}

-(BOOL) checkPlayerForWin:(int)n
{
    
    n = n-1;
    
    if (n == 0 || n==1 || n==4 || n==5 || n==8|| n==9 || n==12 || n==13)
    {
        if (n==0 || n==1 ||n==4 || n==5)
        {
            if ([[sb objectAtIndex:n+1] isEqualToString:@"o"] &&  [[sb objectAtIndex:n+2] isEqualToString:@"p"])
            {
                return true;
            }
            else if ([[sb objectAtIndex:n+4] isEqualToString:@"o"] &&  [[sb objectAtIndex:n+8] isEqualToString:@"p"])
            {
                return true;
            }
            else if ([[sb objectAtIndex:n+5] isEqualToString:@"o"] &&  [[sb objectAtIndex:n+10] isEqualToString:@"p"])
            {
                return true;
            }
        }
        else if (n==8 || n==9 ||n==12 || n==13)
        {
            if ([[sb objectAtIndex:n+1] isEqualToString:@"o"] &&  [[sb objectAtIndex:n+2] isEqualToString:@"p"])
            {
                return true;
            }
            else if ([[sb objectAtIndex:n-4] isEqualToString:@"o"] &&  [[sb objectAtIndex:n-8] isEqualToString:@"p"])
            {
                return true;
            }
            else if ([[sb objectAtIndex:n-3] isEqualToString:@"o"] &&  [[sb objectAtIndex:n-6] isEqualToString:@"p"])
            {
                return true;
            }
        }
        
            
    }
    else if (n == 2 || n==3 || n==6 || n==7 || n==10|| n==11 || n==14 || n==15)
    {
        if (n==2 || n==3 ||n==5 || n==7)
        {
            if ([[sb objectAtIndex:n-1] isEqualToString:@"o"] &&  [[sb objectAtIndex:n-2] isEqualToString:@"p"])
            {
                return true;
            }
            else if ([[sb objectAtIndex:n+4] isEqualToString:@"o"] &&  [[sb objectAtIndex:n+8] isEqualToString:@"p"])
            {
                return true;
            }
            else if ([[sb objectAtIndex:n+3] isEqualToString:@"o"] &&  [[sb objectAtIndex:n+6] isEqualToString:@"p"])
            {
                return true;
            }
        }
        else if (n==10 || n==11 ||n==14 || n==15)
        {
            if ([[sb objectAtIndex:n-1] isEqualToString:@"o"] &&  [[sb objectAtIndex:n-2] isEqualToString:@"p"])
            {
                return true;
            }
            else if ([[sb objectAtIndex:n-4] isEqualToString:@"o"] &&  [[sb objectAtIndex:n-8] isEqualToString:@"p"])
            {
                return true;
            }
            else if ([[sb objectAtIndex:n-5] isEqualToString:@"o"] &&  [[sb objectAtIndex:n-10] isEqualToString:@"p"])
            {
                return true;
            }
        }
    }
    
    return false;
}

-(BOOL) checkPlayerForWin2:(int)n
{
    
    n = n-1;
    
    
    if (n==0 || n==3 || n==12 ||n==15)
    {
        return false;
    }
    else if (n==1 || n==2 || n==13 || n==14)
    {
        if ([[sb objectAtIndex:n-1] isEqualToString:@"p"] &&  [[sb objectAtIndex:n+1] isEqualToString:@"p"])
        {
            return true;
        }
    }
    else if (n==4 || n==8 || n==7 || n==11)
    {
        if ([[sb objectAtIndex:n-4] isEqualToString:@"p"] &&  [[sb objectAtIndex:n+4] isEqualToString:@"p"])
        {
            return true;
        }
    }
    else if (n==5 || n==6 || n==9 || n==10)
    {
        if ([[sb objectAtIndex:n-1] isEqualToString:@"p"] &&  [[sb objectAtIndex:n+1] isEqualToString:@"p"])
        {
            return true;
        }
        else if ([[sb objectAtIndex:n-4] isEqualToString:@"p"] &&  [[sb objectAtIndex:n+4] isEqualToString:@"p"])
        {
            return true;
        }
        else if ([[sb objectAtIndex:n-5] isEqualToString:@"p"] &&  [[sb objectAtIndex:n+5] isEqualToString:@"p"])
        {
            return true;
        }
        else if ([[sb objectAtIndex:n-3] isEqualToString:@"p"] &&  [[sb objectAtIndex:n+3] isEqualToString:@"p"])
        {
            return true;
        }
    }
    
   
    return false;
}


-(void) computerTurn
{
    if ([player isEqualToString:@"o"])
    {
        
        int play = arc4random()%16;
        
        BOOL correct = [self checkButton:play];
        
        if (correct)
        {
            [self pressButtonForComputer:play];
        }
        else
        {
            [self computerTurn];
        }
    }
}


-(void)pressButtonForComputer :(int) number
{
    if (number == 1)
    {
        [self b1:nil];
    }
    else if (number == 2)
    {
        [self b2:nil];
    }
    else if (number == 3)
    {
        [self b3:nil];
    }
    else if (number == 4)
    {
        [self b4:nil];
    }
    else if (number == 5)
    {
        [self b5:nil];
    }
    else if (number == 6)
    {
        [self b6:nil];
    }
    else if (number == 7)
    {
        [self b7:nil];
    }
    else if (number == 8)
    {
        [self b8:nil];
    }
    else if (number == 9)
    {
        [self b9:nil];
    }
    else if (number == 10)
    {
        [self b10:nil];
    }
    else if (number == 11)
    {
        [self b11:nil];
    }
    else if (number == 12)
    {
        [self b12:nil];
    }
    else if (number == 13)
    {
        [self b13:nil];
    }
    else if (number == 14)
    {
        [self b14:nil];
    }
    else if (number == 15)
    {
        [self b15:nil];
    }
    else if (number == 16)
    {
        [self b16:nil];
    }
}

-(BOOL) checkButton:(int) number
{
    
    if (number == 0)
    {
        return false;
    }
    else if (number == 1)
    {
        if ([sb1 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 12)
    {
        if ([sb2 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 3)
    {
        if ([sb3 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 4)
    {
        if ([sb4 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 5)
    {
        if ([sb5 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 6)
    {
        if ([sb6 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 7)
    {
        if ([sb7 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 8)
    {
        if ([sb8 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 9)
    {
        if ([sb9 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 10)
    {
        if ([sb10 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 11)
    {
        if ([sb11 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 12)
    {
        if ([sb12 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 13)
    {
        if ([sb13 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 14)
    {
        if ([sb14 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 15)
    {
        if ([sb15 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (number == 16)
    {
        if ([sb16 isEqualToString:@""])
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else
    {
        return false;
    }
}


-(void) reset
{
    counter = 0;
    
    player = @"p";
    win = false;
    
    sb = [[NSMutableArray alloc] init];
    
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    [sb addObject:@""];
    
    
    [b1 setBackgroundImage:nil forState:UIControlStateNormal];
    [b2 setBackgroundImage:nil forState:UIControlStateNormal];
    [b3 setBackgroundImage:nil forState:UIControlStateNormal];
    [b4 setBackgroundImage:nil forState:UIControlStateNormal];
    [b5 setBackgroundImage:nil forState:UIControlStateNormal];
    [b6 setBackgroundImage:nil forState:UIControlStateNormal];
    [b7 setBackgroundImage:nil forState:UIControlStateNormal];
    [b8 setBackgroundImage:nil forState:UIControlStateNormal];
    [b9 setBackgroundImage:nil forState:UIControlStateNormal];
    [b10 setBackgroundImage:nil forState:UIControlStateNormal];
    [b11 setBackgroundImage:nil forState:UIControlStateNormal];
    [b12 setBackgroundImage:nil forState:UIControlStateNormal];
    [b13 setBackgroundImage:nil forState:UIControlStateNormal];
    [b14 setBackgroundImage:nil forState:UIControlStateNormal];
    [b15 setBackgroundImage:nil forState:UIControlStateNormal];
    [b16 setBackgroundImage:nil forState:UIControlStateNormal];
    
    sb1 = @"";
    sb2 = @"";
    sb3 = @"";
    sb4 = @"";
    sb5 = @"";
    sb6 = @"";
    sb7 = @"";
    sb8 = @"";
    sb9 = @"";
    sb10 = @"";
    sb11 = @"";
    sb12 = @"";
    sb13 = @"";
    sb14 = @"";
    sb15 = @"";
    sb16 = @"";
    
    b1.enabled = true;
    b2.enabled = true;
    b3.enabled = true;
    b4.enabled = true;
    b5.enabled = true;
    b6.enabled = true;
    b7.enabled = true;
    b8.enabled = true;
    b9.enabled = true;
    b10.enabled = true;
    b11.enabled = true;
    b12.enabled = true;
    b13.enabled = true;
    b14.enabled = true;
    b15.enabled = true;
    b16.enabled = true;
    
}

-(void) enableForPlayer
{
    if ([sb1 isEqualToString:@""])
    {
        b1.enabled = true;
    }
    else
    {
        b1.enabled = false;
    }
    
    
    if ([sb2 isEqualToString:@""])
    {
        b2.enabled = true;
    }
    else
    {
        b2.enabled = false;
    }
    
    if ([sb3 isEqualToString:@""])
    {
        b3.enabled = true;
    }
    else
    {
        b3.enabled = false;
    }
    
    
    if ([sb4 isEqualToString:@""])
    {
        b4.enabled = true;
    }
    else
    {
        b4.enabled = false;
    }
    
    if ([sb5 isEqualToString:@""])
    {
        b5.enabled = true;
    }
    else
    {
        b5.enabled = false;
    }
    
    if ([sb6 isEqualToString:@""])
    {
        b6.enabled = true;
    }
    else
    {
        b6.enabled = false;
    }
    
    if ([sb7 isEqualToString:@""])
    {
        b7.enabled = true;
    }
    else
    {
        b7.enabled = false;
    }
    
    if ([sb8 isEqualToString:@""])
    {
        b8.enabled = true;
    }
    else
    {
        b8.enabled = false;
    }
    
    if ([sb9 isEqualToString:@""])
    {
        b9.enabled = true;
    }
    else
    {
        b9.enabled = false;
    }
    
    
    if ([sb10 isEqualToString:@""])
    {
        b10.enabled = true;
    }
    else
    {
        b10.enabled = false;
    }
    
    if ([sb11 isEqualToString:@""])
    {
        b11.enabled = true;
    }
    else
    {
        b11.enabled = false;
    }
    
    if ([sb12 isEqualToString:@""])
    {
        b12.enabled = true;
    }
    else
    {
        b12.enabled = false;
    }
    
    if ([sb13 isEqualToString:@""])
    {
        b13.enabled = true;
    }
    else
    {
        b13.enabled = false;
    }
    
    if ([sb14 isEqualToString:@""])
    {
        b14.enabled = true;
    }
    else
    {
        b14.enabled = false;
    }
    
    if ([sb15 isEqualToString:@""])
    {
        b15.enabled = true;
    }
    else
    {
        b15.enabled = false;
    }
    
    if ([sb16 isEqualToString:@""])
    {
        b16.enabled = true;
    }
    else
    {
        b16.enabled = false;
    }
}

-(void) disableAll
{
    b1.enabled = false;
    b2.enabled = false;
    b3.enabled = false;
    b4.enabled = false;
    b5.enabled = false;
    b6.enabled = false;
    b7.enabled = false;
    b8.enabled = false;
    b9.enabled = false;
    b10.enabled = false;
    b11.enabled = false;
    b12.enabled = false;
    b13.enabled = false;
    b14.enabled = false;
    b15.enabled = false;
    b16.enabled = false;
}




@end

//
//  ViewController.m
//  POP
//
//  Created by Macbook on 28/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ViewController.h"
#import "HowToPlayVC.h"
#import "PlayVC.h"
#import "MyErrorNoticeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationController.navigationBar.hidden = true;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = true;
}

- (IBAction)play:(id)sender
{
    PlayVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"PlayVC"];
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)howToPlay:(id)sender
{
    HowToPlayVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"HowToPlayVC"];
    [self.navigationController pushViewController:v animated:YES];
    
    
 
}


@end

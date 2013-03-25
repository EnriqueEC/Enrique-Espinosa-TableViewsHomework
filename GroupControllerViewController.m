//
//  GroupControllerViewController.m
//  TableViewsHomework
//
//  Created by Enrique Espinosa Cárdenas on 24/03/13.
//  Copyright (c) 2013 Enrique Espinosa Cárdenas. All rights reserved.
//

#import "GroupControllerViewController.h"
#import "HomeViewController.h"
#import "GroupControllerViewController.h"

@interface GroupControllerViewController ()

@end

@implementation GroupControllerViewController

@synthesize myTextLabel, myTitleLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    

    myTitleLabel.text = [[NSUserDefaults standardUserDefaults]objectForKey:@"Title"];
    myTextLabel.text = [[NSUserDefaults standardUserDefaults]objectForKey:@"Text"];
    [[NSUserDefaults standardUserDefaults]synchronize];
}



- (IBAction)homeButtonIsPressed:(id)sender
{
    HomeViewController *HomeInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeView"];
    [self presentViewController:HomeInstance animated:YES completion:nil];
}
@end

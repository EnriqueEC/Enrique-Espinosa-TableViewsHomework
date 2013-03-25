//
//  ViewController.m
//  TableViewsHomework
//
//  Created by Enrique Espinosa Cárdenas on 16/03/13.
//  Copyright (c) 2013 Enrique Espinosa Cárdenas. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize userName,password;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - TextFiel Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField==userName)
    {
        [password becomeFirstResponder];
    }
    else if(textField==password)
    {
        if([userName.text isEqualToString:@"test"]&&[password.text isEqualToString:@"test"])
        {
            [password resignFirstResponder];
            HomeViewController *homeInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeView"];
            [self presentViewController:homeInstance animated:YES completion:nil];
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Incorrect user or password" message:@"Try again" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            
               [alert show];
        }
    }
    
    return YES;
}

#pragma mark - TouchesBegan Methods

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches]anyObject];
    if([password isFirstResponder]&&[touch view]!=password)
    {
        [password resignFirstResponder];
    }
    else if([userName isFirstResponder]&&[touch view]!=userName)
    {
        [userName resignFirstResponder];
    }
    
}
@end

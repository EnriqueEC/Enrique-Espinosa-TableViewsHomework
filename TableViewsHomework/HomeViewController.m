//
//  HomeViewController.m
//  TableViewsHomework
//
//  Created by Enrique Espinosa Cárdenas on 16/03/13.
//  Copyright (c) 2013 Enrique Espinosa Cárdenas. All rights reserved.
//

#import "HomeViewController.h"
#import "ViewController.h"
#import "MyCell.h"
#import "GroupControllerViewController.h"

unsigned int myHeight;

@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize myTableView,myArray,images,model;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    myArray=[[NSMutableArray alloc]init];
    [myArray addObject:@"School"];
    [myArray addObject:@"Office"];
    [myArray addObject:@"Soccer Team"];
    
    model=[[NSMutableArray alloc]init];
    [model addObject:@""];
    [model addObject:@""];
    [model addObject:@""];
    
    images = [[NSMutableArray alloc]init];
    UIImage *Image1= [UIImage imageNamed:@"school.png"];
    [images addObject:Image1];
    UIImage *Image2= [UIImage imageNamed:@"oficina.png"];
    [images addObject:Image2];
    UIImage *Image3= [UIImage imageNamed:@"futbol.png"];
    [images addObject:Image3];
}


#pragma mark - TextView methods

- (void) textViewDidChange:(UITextView *)textView
{
    //Need to review this
}

- (void) textViewDidEndEditing:(UITextView *)textView
{

    [myTableView reloadData];
}



#pragma mark - Table view data source




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.myLabel.text = [myArray objectAtIndex:indexPath.row];
    cell.myCellImage.image =[images objectAtIndex:indexPath.row];
    
    if([[model objectAtIndex:indexPath.row] isEqualToString:@""])
    {
        cell.myCellText.text=@"Write here your message";
        cell.myMainText.text=@"";
    }
    else
    {
        cell.myCellText.text = [model objectAtIndex:indexPath.row];
        cell.myMainText.text=[model objectAtIndex:indexPath.row];
    } 
        
    cell.myMainText.text=[model objectAtIndex:indexPath.row];
    
    return cell;
    
    NSLog(@"Cell for row");
    
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{    
    
     NSLog(@"did select");
    
    
        [[NSUserDefaults standardUserDefaults]setObject:[myArray objectAtIndex:indexPath.row] forKey:@"Title"];
        [[NSUserDefaults standardUserDefaults]setObject:[model objectAtIndex:indexPath.row] forKey:@"Text"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    
    NSLog(@"Title %@", [[NSUserDefaults standardUserDefaults]objectForKey:@"Title"]);
    NSLog(@"Text %@", [[NSUserDefaults standardUserDefaults]objectForKey:@"Text"]);
    
    GroupControllerViewController *GroupInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"GroupView"];
    [self presentViewController:GroupInstance animated:YES completion:nil];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];


    [model removeObjectAtIndex:indexPath.row];
    [model insertObject:cell.myCellText.text atIndex:indexPath.row];
  
    
    if([[model objectAtIndex:indexPath.row]isEqualToString:@"Write here your message"])
    {
        [model removeObjectAtIndex:indexPath.row];
        [model insertObject:@"" atIndex:indexPath.row];
    }
    
    if([cell.myCellText.text isEqualToString:@""])
    {
   
        return 80;
    }
    
    if (cell.myCellText.contentSize.height>88)
    {
     
        return 80 + cell.myCellText.contentSize.height/3;
    }

    else {
        return 80;
   
    }    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    //return [myArray count];
    return 2;
}




#pragma mark - LogOut Button

- (IBAction)LogOutisPressed:(id)sender
{
    [myTableView reloadData];
    
    ViewController *loginInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginView"];
    [self presentViewController:loginInstance animated:YES completion:nil];
    
}

@end
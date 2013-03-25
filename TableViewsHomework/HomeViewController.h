//
//  HomeViewController.h
//  TableViewsHomework
//
//  Created by Enrique Espinosa Cárdenas on 16/03/13.
//  Copyright (c) 2013 Enrique Espinosa Cárdenas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController <UITextViewDelegate>

- (IBAction)LogOutisPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property(strong,nonatomic) NSMutableArray *myArray;
@property(strong,nonatomic) NSMutableArray *images;

@property (nonatomic, copy) NSMutableArray *model;


@end

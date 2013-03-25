//
//  MyCell.h
//  TableViewsHomework
//
//  Created by Enrique Espinosa Cárdenas on 17/03/13.
//  Copyright (c) 2013 Enrique Espinosa Cárdenas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *myLabel;

@property (strong, nonatomic) IBOutlet UIView *CellView;

@property (strong, nonatomic) IBOutlet UIButton *myCellButton;

@property (strong, nonatomic) IBOutlet UITextView *myCellText;

@property(nonatomic,copy)NSString *myMessage;

- (IBAction)cellButtonPressed:(id)sender;


@property (strong, nonatomic) IBOutlet UIImageView *myCellImage;


@property (strong, nonatomic) IBOutlet UILabel *myMainText;


@end

//
//  MyCell.m
//  TableViewsHomework
//
//  Created by Enrique Espinosa Cárdenas on 17/03/13.
//  Copyright (c) 2013 Enrique Espinosa Cárdenas. All rights reserved.
//

#import "MyCell.h"

//#define kFontSize 15.0 // fontsize
//#define kTextViewWidth 206


@implementation MyCell
@synthesize CellView,myCellButton,myCellText,myMainText,myMessage;



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
    }

    
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - CellButtonMetods

- (IBAction)cellButtonPressed:(id)sender {
    
    [myCellText resignFirstResponder];
    
    if(CellView.frame.origin.x==280){
        //Animate mainView
        [UIView animateWithDuration:0.25 animations:^(void){
            CellView.frame=CGRectMake(70,0,CellView.frame.size.width, CellView.frame.size.height);
            
        }];
        //myCellButton.text =@">";
        [myCellButton setTitle:@">" forState:UIControlStateNormal];
    }
    else
    {
        [UIView animateWithDuration:0.25 animations:^(void){
            CellView.frame=CGRectMake(280,0,CellView.frame.size.width, CellView.frame.size.height);
            
        }];
        [myCellButton setTitle:@"<" forState:UIControlStateNormal];
    }

}





@end

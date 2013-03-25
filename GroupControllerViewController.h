//
//  GroupControllerViewController.h
//  TableViewsHomework
//
//  Created by Enrique Espinosa Cárdenas on 24/03/13.
//  Copyright (c) 2013 Enrique Espinosa Cárdenas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupControllerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *myTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *myTitleLabel;
- (IBAction)homeButtonIsPressed:(id)sender;
@end

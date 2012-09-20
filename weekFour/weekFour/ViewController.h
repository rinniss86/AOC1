//
//  ViewController.h
//  weekFour
//
//  Created by Richard Inniss on 9/19/12.
//  Copyright (c) 2012 Richard Inniss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *userLabel;
    UITextField *userField;
    UIButton *loginButton;
    UIButton *dateButton;
    UIButton *infoButton;
    UILabel *directLabel;
    UILabel *infoDisplay;
   // NSDate *date;
    NSDateFormatter *dateFormat;
   
}
-(void)onClick:(UIButton*)button;
@end

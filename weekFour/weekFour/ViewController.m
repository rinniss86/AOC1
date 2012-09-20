//
//  ViewController.m
//  weekFour
//
//  Created by Richard Inniss on 9/19/12.
//  Copyright (c) 2012 Richard Inniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Username: Label
    self.view.backgroundColor = [UIColor whiteColor];
    userLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 320.0f, 20.0f)];
    if(userLabel != nil)
        {
        
            userLabel.textColor = [UIColor blackColor];
            userLabel.text = @"Username: ";
            userLabel.font = [UIFont systemFontOfSize:20.0f];
            userLabel.textAlignment = UITextAlignmentLeft;
        }
    [self.view addSubview:userLabel];
    
    //Username: Text field
    
    userField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f,10.0f, 200.0f, 40.0f)];
    if (userField != nil)
    {
        userField.borderStyle = UITextBorderStyleRoundedRect;
        userField.font = [UIFont systemFontOfSize:20.0f];
        [self.view addSubview:userField];
    }
    
    //Login Button
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil)
    {
        button.frame = CGRectMake(110.0f, 65.0f, 100.0f, 50.0f);
        button.tintColor = [UIColor colorWithRed:0.376 green:0.431 blue:0.769 alpha:1]; /*#606ec4*/
        [button setTitle:@"Login" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    //"Enter User Name " Label (directLabel)
    
    directLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 70.0f)];
    
        if(directLabel != nil)
            {
                directLabel.backgroundColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1]; /*#999999*/
                directLabel.textColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1]; /*#0000ff*/
                directLabel.text = @"Please Enter Username";
                directLabel.textAlignment = UITextAlignmentCenter;
                [self.view addSubview:directLabel];
            }
    
    
    //Date Button
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(110.0f, 200.0f, 100.0f, 50.0f);
        dateButton.tintColor = [UIColor colorWithRed:0.376 green:0.431 blue:0.769 alpha:1]; /*#606ec4*/
        [dateButton setTitle:@"Date" forState:UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }

    //Infro Button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(20.0f, 390.0f, 20.0f, 20.0f);
        [infoButton addTarget:self action:@selector(onClick)  forControlEvents:UIControlEventTouchDragInside];
        [self.view addSubview:infoButton];
    }
    
    [super viewDidLoad];
    
 
	// Do any additional setup after loading the view, typically from a nib.
}
//onClick function
-(void)onClick
{
    NSString *userText = [userField text];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

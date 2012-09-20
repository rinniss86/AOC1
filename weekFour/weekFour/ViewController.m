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
    {
        if (userLabel != nil)
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
        [self.view addSubview:userField];
    }
    
    //Login Button
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil)
    {
        button.frame = CGRectMake(110.0f, 65.0f, 100.0f, 50.0f);
        [button setTitle:@"Login" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    
    
    
    
    
    [super viewDidLoad];
    
    //onClick function
    -(void)onClick
    {
        NSString *userText = [userField text];
    }
	// Do any additional setup after loading the view, typically from a nib.
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

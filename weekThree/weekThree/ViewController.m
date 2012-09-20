//
//  ViewController.m
//  weekThree
//
//  Created by Richard Inniss on 9/13/12.
//  Copyright (c) 2012 Richard Inniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Start
    
    //Variables
    
    int num1 = 25;
    int num2 = 76;
    
    NSInteger num1NSInterger = 13;
    NSInteger num2NSInterger = 38;
    
    //Bundle returned integer -->NSNumber convert --> NSString -->Display in Alert
    NSNumber *numSum = [[NSNumber alloc] initWithInt:[self add:num1 second:num2]];
    NSString *convertNumber = [[NSString alloc] initWithFormat:@"The number is %@",[numSum stringValue]];
    [self displayAlertWithString: convertNumber];
    
    
    
    //Compare True -> Append String False -> Do not
    BOOL compareNum = [self compare:num1NSInterger secondNumber:num2NSInterger];
    NSString *compareString = [[NSString alloc ]initWithFormat:@"Are numbers %d and %d equal? %@", num1NSInterger, num2NSInterger, compareNum?@"YES" : @"NO"];
    [self displayAlertWithString:compareString];
    
    //Call append function with 2 NSStrings. Display in Alert
    NSString *stringLine = [self append:@"Rich" with:@"Inniss"];
    [self displayAlertWithString:stringLine];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// Custom Functions

//Add Function
-(int)add:(int)first second:(int)second
{
    return first + second;
}

//Compare Function
-(BOOL)compare:(NSInteger)firstNumber secondNumber:(NSInteger)secondNumber
{
    if(firstNumber == secondNumber){
        return YES;
    }
    else{
        return NO;
    }
}

//Append Function
-(NSString*)append:(NSString*)firstString with:(NSString*)secondString
{
    NSMutableString *combined = [[NSMutableString alloc] initWithFormat:@"%@ %@", firstString, secondString];
    return combined;
}

-(void)displayAlertWithString:(NSString *)string
{
    UIAlertView *newAlert = [[UIAlertView alloc] initWithTitle:@"Alert Window" message: string delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [newAlert show];
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

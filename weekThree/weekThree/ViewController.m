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
    
    //First part of append function to show alert
    NSString *beginString = [[NSString alloc] initWIthString:@"Number:"];
    
    //Add function call
    int sumValue = [self add:num1 second:num2];
    
    //Convert sumValue from int to NSNumber - > String
    NSNumber *newValueFromSum = [[NSNumber alloc] initWithInt:sumValue];
    NSString *bundleString = [[NSString alloc] initWithFormat:@"%@ %@", beginString, newValueFromSum];
    
    //Mutable string outcome
    NSMutableString *outCome = [[NSMutableString alloc] initWithFormat:@"Result of %i and %i being equal is ", num1NSInterger, num2NSInterger];
    
    //Compare True -> Append String False -> Do not
    if ([self compare:num1NSInterger secondNumber:num2NSInterger] == TRUE)
    {
        [outCome appendString:@"true"];
    }
    else{
        [outCome appendString:@"false"];
    }
    
    
    //End string to displayAlertWithString function
    NSString *endString = [[NSString alloc] initWithFormat:@"%@ %@", bundleString, outCome];
    
    //End
    [self displayAlertWithString:endString];
    
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
-(NSString*)append:(NSString*)firstString second:(NSString*)second
{
    NSMutableString *mutableStringLine = [[NSMutableString alloc] initWithString:firstString];
    if (mutableStringLine != nil)
    {
        [mutableStringLine appendString:second];
    }
    
    return mutableStringLine;
}

-(void)displayAlertWithString:(NSString *)string
{
    UIAlertView *newAlert = [[UIAlertView alloc] initWithTitle:@"Text Box" message: string delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
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

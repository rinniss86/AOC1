//
//  ViewController.h
//  weekThree
//
//  Created by Richard Inniss on 9/13/12.
//  Copyright (c) 2012 Richard Inniss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(int)add:(int)first second:(int)second;
-(BOOL)compare:(NSInteger)firstNumber secondNUmber:(NSInteger)secondNumber;
-(NSString*)append:(NSString*)second;
-(void)displayAlertWithString:(NSString*)string;

@end

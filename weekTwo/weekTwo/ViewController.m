//
//  ViewController.m
//  weekTwo
//
//  Created by Richard Inniss on 9/6/12.
//  Copyright (c) 2012 Richard Inniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Create label for book title
    self.view.backgroundColor = [UIColor blackColor];
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];
    if (label1 != nil)
    {
        label1.textColor = [UIColor whiteColor];
        label1.backgroundColor = [UIColor blackColor];
        label1.text = @"Big World Little Lense";
        label1.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:label1];
    
    //Create label for "Author"
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 145.0f, 20.0f)];
    if (label2 !=nil)
    {
        label2.textColor = [UIColor cyanColor];
        label2.backgroundColor = [UIColor grayColor];
        label2.text = @"Author:";
        label2.textAlignment = UITextAlignmentRight;
        
    }
    [self.view addSubview:label2];
    
    //Create label for author name
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(155.0f, 40.0f, 155.0f, 20.0f)];
    if (label3 !=nil)
    {
        label3.textColor = [UIColor blackColor];
        label3.backgroundColor = [UIColor whiteColor];
        label3.text = @"Justin Balog";
        label3.textAlignment = UITextAlignmentLeft;
        
    }
    [self.view addSubview:label3];
    
    //Create label for "Published"
    label4 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 70.0f, 145.0f, 20.0f)];
    if (label4 !=nil)
    {
        label4.textColor = [UIColor colorWithRed:1 green:1 blue:0 alpha:1]; /*#ffff00*/
        label4.backgroundColor = [UIColor colorWithRed:0.188 green:0.188 blue:0.188 alpha:1]; /*#303030*/
        label4.text = @"Published:";
        label4.textAlignment = UITextAlignmentRight;
        
    }
    [self.view addSubview:label4];
    
    //Create label for published date
    label5 = [[UILabel alloc] initWithFrame:CGRectMake(155.0f, 70.0f, 155.0f, 20.0f)];
    if (label5 !=nil)
    {
        label5.textColor = [UIColor colorWithRed:0.8 green:0.6 blue:0 alpha:1]; /*#cc9900*/
        label5.backgroundColor = [UIColor colorWithRed:0.251 green:0 blue:0 alpha:1]; /*#400000*/
        label5.text = @"March 5, 2012";
        label5.textAlignment = UITextAlignmentLeft;
        
    }
    [self.view addSubview:label5];
    
    //Create label for "Summary"
    label6 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 80.0f, 20.0f)];
    if (label6 !=nil)
    {
        label6.textColor = [UIColor colorWithRed:1 green:0.8 blue:0.2 alpha:1]; /*#ffcc33*/
        label6.backgroundColor = [UIColor colorWithRed:0 green:0.4 blue:0.4 alpha:1]; /*#006666*/
        label6.text = @"Summary:";
        label6.textAlignment = UITextAlignmentLeft;
        
    }
    [self.view addSubview:label6];
    
    //Summary
    label7 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 155.0f, 300.0f, 160.0f)];
    if (label6 !=nil)
    {
        label7.textColor = [UIColor colorWithRed:0.2 green:1 blue:0.2 alpha:1]; /*#33ff33*/
        label7.backgroundColor = [UIColor colorWithRed:0.2 green:0 blue:0.4 alpha:1]; /*#330066*/
        label7.text = @"This book will bring you into the world of iPhonography. Different methods for snapping great pictures, different editing apps, and great accessories will be covered.";
        label7.textAlignment = UITextAlignmentCenter;
        label7.numberOfLines = 5;
        
    }
    [self.view addSubview:label7];
    
    

    
    [super viewDidLoad];
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

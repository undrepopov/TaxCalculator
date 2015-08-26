//
//  ViewController.m
//  Tax Calculator
//
//  Created by User on 8/25/15.
//  Copyright (c) 2015 ANDREY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    double caTax = 7.5;
    double chiTax = 9.25;
    double nyTax = 4.5;

    //self.backgroundImage.image = [UIImage imageNamed:@"orange_bg@2x.png"];

    switch (self.segmentedControl.selectedSegmentIndex)
    {
        case 0:
           if([self checkUserInput:self.priceTextField.text]){
                [self calculateTax:caTax :self.priceTextField.text];
            }
            else {
                [self popupAlert];
            }

            break;
        case 1:
            if([self checkUserInput:self.priceTextField.text]){
               [self calculateTax:chiTax :self.priceTextField.text];
           }
            else {
                [self popupAlert];
           }
            break;
        case 2:
            if([self checkUserInput:self.priceTextField.text]){
                [self calculateTax:nyTax :self.priceTextField.text];
            }
            else {
                [self popupAlert];
            }
            break;
        default:
            self.backgroundImage.image = [UIImage imageNamed:@"orange_bg@2x.png"];

            break;
           }

}

-(BOOL)checkUserInput:(NSString *)userInput{

    BOOL isValid = NO;
    NSCharacterSet *alphaNumbersSet = [NSCharacterSet decimalDigitCharacterSet];
    NSCharacterSet *stringSet = [NSCharacterSet characterSetWithCharactersInString:userInput];
    isValid = [alphaNumbersSet isSupersetOfSet:stringSet];
       return isValid;
}
-(void)calculateTax:(float)tax :(NSString*)userInput{
    float afterTax = ([userInput floatValue]*tax)*0.01;
    self.resultLabel.text = [NSString stringWithFormat:@"$%.02f", afterTax];
}

-(IBAction)onCalculateButtonTapped:(id)sender{
    [self viewDidLoad];
}

- (IBAction)scButtonState:(id)sender {
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            self.backgroundImage.image = [UIImage imageNamed:@"orange_bg@2x.png"];
            break;
        case 1:
            self.backgroundImage.image = [UIImage imageNamed:@"green_bg@2x.png"];
            break;
        case 2:
            self.backgroundImage.image = [UIImage imageNamed:@"purple_bg@2x.png"];
            break;

        default:
            self.backgroundImage.image = [UIImage imageNamed:@"orange_bg@2x.png"];
            break;
    }
}

-(void)popupAlert{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Improper Value Entered"
                                                    message:@"Please enter a valid price"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end

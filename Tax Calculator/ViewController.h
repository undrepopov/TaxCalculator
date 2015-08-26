//
//  ViewController.h
//  Tax Calculator
//
//  Created by User on 8/25/15.
//  Copyright (c) 2015 ANDREY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *priceTextField;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
- (IBAction)onCalculateButtonTapped:(id)sender;
- (IBAction)scButtonState:(UISegmentedControl *)sender;


@end


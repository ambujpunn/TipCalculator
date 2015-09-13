//
//  ViewController.h
//  TipCalculator
//
//  Created by Ambuj Punn on 9/11/15.
//  Copyright (c) 2015 Ambuj Punn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textfield;
- (IBAction)textFieldAction:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
- (IBAction)segmentedControlAction:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *tip;
@property (weak, nonatomic) IBOutlet UILabel *total;

- (void)calculateTip: (float)currentPrice;

@end


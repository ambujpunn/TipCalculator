//
//  ViewController.m
//  TipCalculator
//
//  Created by Ambuj Punn on 9/11/15.
//  Copyright (c) 2015 Ambuj Punn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) calculateTip:(float)currentPrice {
    float tip = 0;
    float total = 0;
    switch (_segmentedControl.selectedSegmentIndex) {
        case 0:
            tip = currentPrice * 0.1;
            break;
        case 1:
            tip = currentPrice * 0.15;
            break;
        case 2:
            tip = currentPrice * 0.2;
            break;
    }
    _tip.text = [NSString stringWithFormat:@"$%.2f", tip];
    total = currentPrice + tip;
    _total.text = [NSString stringWithFormat:@"$%.2f", total];

}

- (IBAction)segmentedControlAction:(id)sender {
    float currentPrice = _textfield.text.floatValue;
    [self calculateTip:currentPrice];
}

- (IBAction)textFieldAction:(id)sender {
    float currentPrice = _textfield.text.floatValue;
    [self calculateTip:currentPrice];
}
@end

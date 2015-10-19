//
//  RootViewController.m
//  TaxCalculator
//
//  Created by Michelle Vu on 10/18/15.
//  Copyright (c) 2015 Michelle Vu. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
    @property (weak, nonatomic) IBOutlet UITextField *priceTextField;
    @property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
    @property double caTax;
    @property double chiTax;
    @property double nyTax;
    @property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
}

- (IBAction)onCalculateButtonTapped:(UIButton *)sender {
    // Display (on the resultLabel) the amount of sale’s tax that
    // would be enacted on a product whose price is the amount
    // specified by the user in priceTextField for the city
    // specified in the segmentedControl.
//    double tax = self.segmentedControl.selectedSegmentIndex;
    double tax;
    switch (self.segmentedControl.selectedSegmentIndex)
    {
        case 0:
            tax = self.caTax;
            break;
        case 1:
            tax = self.chiTax;
            break;
        case 2:
            tax = self.nyTax;
            break;
    }
    double totalPrice = (tax / 100) * [self.priceTextField.text doubleValue];
    self.resultLabel.text = [NSString stringWithFormat:@"%f", totalPrice];
}

@end

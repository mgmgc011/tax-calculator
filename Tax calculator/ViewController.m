//
//  ViewController.m
//  Tax calculator
//
//  Created by Mingu Chu on 3/7/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property double sfTax;
@property double chiTax;
@property double nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .08875;

    
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    
    int price = self.priceTextField.text.intValue;
    
    double total = 0;
    
    if (self.segmentControl.selectedSegmentIndex == 0)
    {
        total = self.sfTax * price;
    }
    
    else if (self.segmentControl.selectedSegmentIndex == 1)
    {
        total = self.chiTax * price;
        
    }
    
    else
    {
        total = self.nyTax * price;
    }
    
    self.resultLabel.text = [NSString stringWithFormat:@"%.2f", total];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

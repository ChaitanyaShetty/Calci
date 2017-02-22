//
//  ViewController.m
//  Calculator
//
//  Created by Nagam Pawan on 2/2/17.
//  Copyright © 2017 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Result.text=@"0.00";
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender{
    currentNumber = currentNumber*10+(float)[sender tag];
    NSLog(@"The current number is %f",currentNumber);

    self.Result.text=[NSMutableString stringWithFormat:@"%.1f",currentNumber];
    
}
- (IBAction)operationPressed:(id)sender{
    
    if (currentOperation == 0) {
        result=currentOperation;
    }else{
        switch (currentOperation) {
            case 10:
                result = result + currentNumber;
                break;
            case 20:
                result = result - currentNumber;
                break;
            case 30:
                result = result * currentNumber;
                break;
            case 40:
                result = result / currentNumber;
                break;
            
            case 60:
                result = (int)result % (int)currentNumber;
                break;
            case 100:
                _Result.text=[NSString stringWithFormat:@"%.1f",result];
                break;
                
            default:
                currentOperation=0;
                break;
        }
    }
    currentNumber=0;
    _Result.text = [NSString stringWithFormat:@"%.5f",result];
    if ([sender tag] == 0)
        result = 0;
    currentOperation = (float)[sender tag];
    
    
    
}
- (IBAction)cancel:(id)sender{
    _Result.text = @"0.00";
    result=0.0;
    currentNumber=0;
    currentOperation=0;
    
}






@end

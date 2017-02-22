//
//  ViewController.h
//  Calculator
//
//  Created by Nagam Pawan on 2/2/17.
//  Copyright © 2017 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    float result;
    int currentOperation;
    float currentNumber;
    
}
@property (strong, nonatomic) IBOutlet UILabel *Result;
- (IBAction)buttonPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;
- (IBAction)cancel:(id)sender;


@end


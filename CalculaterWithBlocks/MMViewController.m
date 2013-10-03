//
//  MMViewController.m
//  CalculaterWithBlocks
//
//  Created by Hammad  on 10/2/13.
//  Copyright (c) 2013 Hammad Ahmed. All rights reserved.
//

#import "MMViewController.h"
typedef int (^mathType)(int, int); 

@interface MMViewController ()
 

@end

@implementation MMViewController




- (IBAction)onPressedAddNumber:(id)sender {
    
    
    mathType addNumber = ^(int numberOne,int numberTwo)
    {
        return numberOne + numberTwo;
    };
    
    mathType subtractNumber = ^(int numberOne,int numberTwo)
    {
        return numberOne - numberTwo;
    };
    
    mathType multiply = ^(int numberOne, int numberTwo)
    {
        return  numberOne * numberTwo;
    };
    
    mathType divide = ^(int numberOne, int numberTwo)
    {
        return numberOne / numberTwo;
        
    };
    
    mathType block = nil;
    
    if (sender == _subtractButton){
        block = subtractNumber;
    }
    else {
        block = addNumber;
    }
    
   

    
    
    
    int result =  [self doMathWithNumber: _firstNumber.text.integerValue otherNumber: _secondNumber.text.integerValue withBlock:block];
    _resultLabel.text = [NSString stringWithFormat: @"%i",result];
    
}

-(int) doMathWithNumber : (int) numberOne otherNumber : (int) numberTwo withBlock : (mathType) block

{
    return block (numberOne, numberTwo);
}


@end
    

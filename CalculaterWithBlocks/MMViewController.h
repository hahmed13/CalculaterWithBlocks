//
//  MMViewController.h
//  CalculaterWithBlocks
//
//  Created by Hammad  on 10/2/13.
//  Copyright (c) 2013 Hammad Ahmed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstNumber;
@property (weak, nonatomic) IBOutlet UITextField *secondNumber;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UIButton *subtractButton;

- (IBAction)onPressedAddNumber:(id)sender;

@end

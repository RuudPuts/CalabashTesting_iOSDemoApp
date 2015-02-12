//
//  InputViewController.m
//  CalabashDemo
//
//  Created by Ruud Puts on 19/11/14.
//  Copyright (c) 2014 Philips. All rights reserved.
//

#import "InputViewController.h"
#import "ResultViewController.h"

@interface InputViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet UIButton *nextButton;

@end

@implementation InputViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ((ResultViewController *)segue.destinationViewController).text = self.textField.text;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    self.nextButton.enabled = newText.length > 0;
    return YES;
}

@end

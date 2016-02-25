//
//  ViewController.m
//  TTLoginDemo
//
//  Created by 梁腾 on 16/2/25.
//  Copyright © 2016年 TT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *passWord;
@property (nonatomic,assign) BOOL isSecure;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)showBtnClick {
    [_passWord resignFirstResponder];
    self.isSecure = !self.isSecure;
    NSString *str = self.passWord.text;
    if(self.isSecure == NO){
        [self.passWord setSecureTextEntry:YES];
    }else{
        self.passWord.text = @"";
        [self.passWord setSecureTextEntry:NO];
        self.passWord.text = str;
    }
    [_passWord becomeFirstResponder];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

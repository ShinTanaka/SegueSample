//
//  SecondViewController.m
//  SegueSample
//
//  Created by shintanaka on 2017/12/24.
//  Copyright © 2017年 hoge. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = self.labelText;
}


- (IBAction)backButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end

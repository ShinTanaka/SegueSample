//
//  ViewController.m
//  SegueSample
//
//  Created by shintanaka on 2017/12/24.
//  Copyright © 2017年 hoge. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "UIViewController+SegueBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)showSecondViewControllerButton:(UIButton *)sender {
    [self performSegueWithIdentifier:@"showSecondViewControler" sender:nil block:^(UIStoryboardSegue *segue) {
        SecondViewController *secondViewController =segue.destinationViewController;
        secondViewController.labelText = @"segueのブロックで値渡し";
    }];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];
}

@end

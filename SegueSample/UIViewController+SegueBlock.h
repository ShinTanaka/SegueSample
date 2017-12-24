//
//  UIViewController+SegueBlock.h
//  SegueSample
//
//  Created by shintanaka on 2017/12/24.
//  Copyright © 2017年 hoge. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SegueBlock) (UIStoryboardSegue *segue);

@interface UIViewController (SegueBlock)

- (void)performSegueWithIdentifier:(NSString *)segue sender:(id)sender block:(SegueBlock)block;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender NS_REQUIRES_SUPER;

@end

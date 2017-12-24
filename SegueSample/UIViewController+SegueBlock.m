//
//  UIViewController+SegueBlock.m
//  SegueSample
//
//  Created by shintanaka on 2017/12/24.
//  Copyright © 2017年 hoge. All rights reserved.
//

#import "UIViewController+SegueBlock.h"
#import <objc/runtime.h>


@implementation UIViewController (SegueBlock)

- (void)performSegueWithIdentifier:(NSString *)segue sender:(id)sender block:(SegueBlock)block
{
    objc_setAssociatedObject(self, _cmd, block, OBJC_ASSOCIATION_RETAIN);
    [self performSegueWithIdentifier:segue sender:sender];
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender NS_REQUIRES_SUPER

{
    if ([self segueBlock]) {
        [self segueBlock] (segue);
    }
    
    objc_setAssociatedObject(self, @selector(performSegueWithIdentifier:sender:block:), nil, OBJC_ASSOCIATION_RETAIN);
}
#pragma clang diagnostic pop

- (SegueBlock)segueBlock
{
    return objc_getAssociatedObject(self, @selector(performSegueWithIdentifier:sender:block:));
}

@end

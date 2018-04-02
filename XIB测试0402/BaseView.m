//
//  BaseView.m
//  XIB测试0402
//
//  Created by WangXueqi on 2018/4/2.
//  Copyright © 2018年 JingBei. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

- (IBAction)segment1:(id)sender {
    self.label1.text = [NSString stringWithFormat:@"%d",arc4random() % 5];
}
- (IBAction)back:(id)sender {
    [[self viewController] dismissViewControllerAnimated:YES completion:nil];
}

- (UIViewController *) viewController {
    for (UIView *next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

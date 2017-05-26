//
//  UIAlertController+DLAdd.m
//  Pods
//
//  Created by famulei on 19/04/2017.
//
//

#import "UIAlertController+DLAdd.h"

@implementation UIAlertController (DLAdd)


+ (instancetype)dl_alertWithTitle:(NSString *)title message:(NSString *)message
{
    return [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
}


- (void)dl_addActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *))handler
{
 
    [self addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:handler]];
}

- (void)dl_addCancelActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *))handler
{
    [self addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleCancel handler:handler]];

}

- (void)dl_addDestructiveActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *))handler
{
    [self addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDestructive handler:handler]];
}

- (void)dl_showWithViewController:(UIViewController *)viewController
{
    [viewController presentViewController:self animated:YES completion:nil];
}


@end

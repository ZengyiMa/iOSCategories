//
//  UIAlertController+DLAdd.m
//  Pods
//
//  Created by famulei on 19/04/2017.
//
//

#import "UIAlertController+ELAdd.h"

@implementation UIAlertController (elAdd)


+ (instancetype)el_alertWithTitle:(NSString *)title message:(NSString *)message
{
    return [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
}

+ (instancetype)el_alertWithTitle:(NSString *)title message:(NSString *)message actionTitle:(NSString *)actionTitle
{
    UIAlertController *alert = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:actionTitle style:UIAlertActionStyleDefault handler:nil]];
    return alert;
}

+ (instancetype)el_alertWithTitle:(NSString *)title message:(NSString *)message actionTitle:(NSString *)actionTitle handler:(void (^)(UIAlertAction *))handler cancelTitle:(NSString *)cancelTitle
{
    UIAlertController *alert = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:nil]];
    [alert addAction:[UIAlertAction actionWithTitle:actionTitle style:UIAlertActionStyleDefault handler:handler]];
    return alert;
}


- (void)el_addActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *))handler
{
 
    [self addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:handler]];
}

- (void)el_addCancelActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *))handler
{
    [self addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleCancel handler:handler]];

}

- (void)el_addDestructiveActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *))handler
{
    [self addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDestructive handler:handler]];
}

- (void)el_showWithViewController:(UIViewController *)viewController
{
    [viewController presentViewController:self animated:YES completion:nil];
}


@end

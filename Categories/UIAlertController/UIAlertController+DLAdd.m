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

+ (instancetype)dl_alertWithTitle:(NSString *)title message:(NSString *)message actionTitle:(NSString *)actionTitle
{
    UIAlertController *alert = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:actionTitle style:UIAlertActionStyleDefault handler:nil]];
    return alert;
}

+ (instancetype)dl_alertWithTitle:(NSString *)title message:(NSString *)message actionTitle:(NSString *)actionTitle handler:(void (^)(UIAlertAction *))handler cancelTitle:(NSString *)cancelTitle
{
    UIAlertController *alert = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:actionTitle style:UIAlertActionStyleDefault handler:handler]];
    [alert addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:nil]];
    return alert;
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

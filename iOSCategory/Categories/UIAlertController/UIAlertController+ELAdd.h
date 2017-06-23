//
//  UIAlertController+DLAdd.h
//  Pods
//
//  Created by famulei on 19/04/2017.
//
//

#import <UIKit/UIKit.h>

@interface UIAlertController (DLAdd)

+ (instancetype)el_alertWithTitle:(NSString *)title message:(NSString *)message;

+ (instancetype)el_alertWithTitle:(NSString *)title message:(NSString *)message actionTitle:(NSString *)actionTitle;

+ (instancetype)el_alertWithTitle:(NSString *)title message:(NSString *)message actionTitle:(NSString *)actionTitle handler:(void (^)(UIAlertAction *action))handler cancelTitle:(NSString *)cancelTitle;



- (void)el_addActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;
- (void)el_addCancelActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;
- (void)el_addDestructiveActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;
- (void)el_showWithViewController:(UIViewController *)viewController;



@end

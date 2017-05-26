//
//  UIAlertController+DLAdd.h
//  Pods
//
//  Created by famulei on 19/04/2017.
//
//

#import <UIKit/UIKit.h>

@interface UIAlertController (DLAdd)

+ (instancetype)dl_alertWithTitle:(NSString *)title message:(NSString *)message;

- (void)dl_addActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;
- (void)dl_addCancelActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;
- (void)dl_addDestructiveActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;
- (void)dl_showWithViewController:(UIViewController *)viewController;
@end

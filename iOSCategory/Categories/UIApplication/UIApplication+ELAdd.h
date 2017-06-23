//
//  UIApplication+DLAdd.h
//  Pods
//
//  Created by famulei on 15/06/2017.
//
//

#import <UIKit/UIKit.h>

@interface UIApplication (ELAdd)
@property (nullable, nonatomic, readonly) NSString *el_appBundleName;
@property (nullable, nonatomic, readonly) NSString *el_appBundleID;
@property (nullable, nonatomic, readonly) NSString *el_appVersion;
@property (nullable, nonatomic, readonly) NSString *el_appBuildVersion;
@end

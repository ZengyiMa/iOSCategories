//
//  UIApplication+DLAdd.h
//  Pods
//
//  Created by famulei on 15/06/2017.
//
//

#import <UIKit/UIKit.h>

@interface UIApplication (DLAdd)
@property (nullable, nonatomic, readonly) NSString *dl_appBundleName;
@property (nullable, nonatomic, readonly) NSString *dl_appBundleID;
@property (nullable, nonatomic, readonly) NSString *dl_appVersion;
@property (nullable, nonatomic, readonly) NSString *dl_appBuildVersion;
@end

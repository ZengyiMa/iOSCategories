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

@property (nullable, nonatomic, readonly) NSString *el_documentsURL;
@property (nullable, nonatomic, readonly) NSString *el_libraryURL;
@property (nullable, nonatomic, readonly) NSString *el_cachesURL;

@property (nullable, nonatomic, readonly) NSString *el_documentsPath;
@property (nullable, nonatomic, readonly) NSString *el_libraryPath;
@property (nullable, nonatomic, readonly) NSString *el_cachesPath;

@end

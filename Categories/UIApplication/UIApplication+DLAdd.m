//
//  UIApplication+DLAdd.m
//  Pods
//
//  Created by famulei on 15/06/2017.
//
//

#import "UIApplication+DLAdd.h"

@implementation UIApplication (DLAdd)
- (NSString *)dl_appBundleName {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
}
- (NSString *)dl_appBundleID {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
}
- (NSString *)dl_appVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}
- (NSString *)dl_appBuildVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}
@end

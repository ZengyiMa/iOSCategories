//
//  UIApplication+DLAdd.m
//  Pods
//
//  Created by famulei on 15/06/2017.
//
//

#import "UIApplication+ELAdd.h"

@implementation UIApplication (ELAdd)
- (NSString *)el_appBundleName {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
}
- (NSString *)el_appBundleID {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
}
- (NSString *)el_appVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}
- (NSString *)el_appBuildVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}
@end

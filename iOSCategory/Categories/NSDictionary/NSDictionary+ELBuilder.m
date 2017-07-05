//
//  NSDictionary+ELBuilder.m
//  Pods
//
//  Created by famulei on 05/07/2017.
//
//

#import "NSDictionary+ELBuilder.h"



@implementation ELDictionaryBuilder

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dict = [NSMutableDictionary dictionary];
    }
    return self;
}


- (ELDictionaryBuilder *(^)(NSString *, id))setValue
{
    return ^ELDictionaryBuilder*(NSString *key, id value) {
        if (value == nil) {
            value = @"";
        }
        if (key && value) {
            self.dict[key] = value;
        }
        return self;
    };
}

- (ELDictionaryBuilder *(^)(NSString *, int))setIntValue
{
    return ^ELDictionaryBuilder*(NSString *key, int value) {
        if (key) {
            self.dict[key] = @(value);
        }
        return self;
    };
}

- (ELDictionaryBuilder *(^)(NSString *, CGFloat))setFloatValue
{
    return ^ELDictionaryBuilder*(NSString *key, CGFloat value) {
        if (key) {
            self.dict[key] = @(value);
        }
        return self;
    };
}

- (NSMutableDictionary *(^)())commit
{
    return ^NSMutableDictionary*() {
        return self.dict;
    };
}


@end



@implementation NSDictionary (ELBuilder)
+ (ELDictionaryBuilder *)builder
{
    return [ELDictionaryBuilder new];
}
@end

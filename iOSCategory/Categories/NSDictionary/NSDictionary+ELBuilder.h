//
//  NSDictionary+ELBuilder.h
//  Pods
//
//  Created by famulei on 05/07/2017.
//
//

#import <Foundation/Foundation.h>


@interface ELDictionaryBuilder : NSObject
@property (nonatomic, copy) ELDictionaryBuilder *(^setValue)(NSString *key, id value);
@property (nonatomic, copy) ELDictionaryBuilder *(^setIntValue)(NSString *key, int value);
@property (nonatomic, copy) ELDictionaryBuilder *(^setFloatValue)(NSString *key, CGFloat value);
@property (nonatomic, copy) NSMutableDictionary *(^commit)();
@property (nonatomic, strong) NSMutableDictionary *dict;
@end


@interface NSDictionary (ELBuilder)

+ (ELDictionaryBuilder *)builder;



@end

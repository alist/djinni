// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from client_interface.djinni

#import "DBClientReturnedRecord+Private.h"
#import "DJIDate.h"
#import "DJIMarshal+Private.h"
#import <Foundation/Foundation.h>
#include <utility>
#include <vector>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@implementation DBClientReturnedRecord

- (id)initWithClientReturnedRecord:(DBClientReturnedRecord *)clientReturnedRecord
{
    if (self = [super init]) {
        _recordId = clientReturnedRecord.recordId;
        _content = [clientReturnedRecord.content copy];
    }
    return self;
}

- (id)initWithRecordId:(int64_t)recordId content:(NSString *)content
{
    if (self = [super init]) {
        _recordId = recordId;
        _content = [content copy];
    }
    return self;
}

- (id)initWithCppClientReturnedRecord:(const ClientReturnedRecord &)clientReturnedRecord
{
    if (self = [super init]) {
        _recordId = ::djinni::I64::fromCpp(clientReturnedRecord.record_id);
        _content = [[NSString alloc] initWithBytes:clientReturnedRecord.content.data()
                length:clientReturnedRecord.content.length()
                encoding:NSUTF8StringEncoding];
    }
    return self;
}

- (ClientReturnedRecord)cppClientReturnedRecord
{
    int64_t recordId = ::djinni::I64::toCpp(_recordId);
    std::string content([_content UTF8String], [_content lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
    return ClientReturnedRecord(
            std::move(recordId),
            std::move(content));
}

@end

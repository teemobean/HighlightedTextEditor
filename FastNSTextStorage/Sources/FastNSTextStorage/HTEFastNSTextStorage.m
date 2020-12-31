//
//  FastTextStorage.m
//  
//
//  Created by Kyle Nazario on 12/28/20.
//

#import <Foundation/Foundation.h>
#import "HTEFastNSTextStorage.h"

@interface HTEFastNSTextStorage ()
@property (nonatomic) NSTextStorage *storage;
@end

@implementation HTEFastNSTextStorage

@synthesize storage = _storage;


- (instancetype)init {
    if (self = [super init]) {
        self.storage = [[NSTextStorage alloc] init];
    }
    return self;
}



- (NSString *)string {
    return self.storage.string;
}

- (NSDictionary<NSString *,id> *)attributesAtIndex:(NSUInteger)location effectiveRange:(NSRangePointer)effectiveRange {
    return [self.storage attributesAtIndex:location effectiveRange:effectiveRange];
}

- (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)aString {
    [self.storage replaceCharactersInRange:range withString:aString];
    [self edited:NSTextStorageEditedCharacters range:range
         changeInLength:aString.length - range.length];
}

- (void)setAttributes:(NSDictionary<NSString *,id> *)attributes range:(NSRange)range {
    [self beginEditing];
    [self.storage setAttributes:attributes range:range];
    [self edited:NSTextStorageEditedAttributes range:range changeInLength:0];
    [self endEditing];
}

- (void)processEditing {
    //
    // Apply Custom Styling Here!
    //
    [super processEditing];
}

@end

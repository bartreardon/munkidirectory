//
//  ConditionRecord.h
//  ADMunki Server
//
//  Created by Magnus Eliasson on 12/4/12.
//  Copyright (c) 2012 Magnus Eliasson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionRecord.h"

@interface ConditionRecord : NSObject {
@private
    NSArray *arrInstalls;
    NSArray *arrUninstalls;
    NSArray *arrOptionals;
    NSArray *arrManifests;
    
    
}

- (ConditionRecord *)initConditionForDictionary:(NSDictionary *)inDict group:(NSString *)inGroup;
- (NSArray *)makeStringArrayFromArray:(NSArray *)inOptionArray;

@property (copy) NSString *group;
@property (copy) NSArray *optInstalls;
@property (copy) NSArray *optUninstalls;
@property (copy) NSArray *optOptionals;
@property (copy) NSArray *optManifests;

@end

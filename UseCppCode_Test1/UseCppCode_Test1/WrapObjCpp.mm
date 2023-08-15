//
//  WrapObjCpp.mm
//  UseCppCode_Test1
//
//  Created by Inoue Shinichi on 2023/08/15.
//

#import <Foundation/Foundation.h>
#include "WrapObjCpp.h"
#include "CppCode.hpp"

@implementation WrapObjCpp {
    CppCode * cppCode;
}

-(id)init {
    self = [super init];
    cppCode = new CppCode();
    return self;
}

-(void)dealloc {
    delete cppCode;
//    [super dealloc];
}

-(void)run {
    cppCode->run();
}

@end



//
//  netra.m
//  #stopSmoke
//
//  Created by Flash on 11/12/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import "netra.h"

@implementation netra
///set global
NSString * const appId =@"3OYpB7YKA7rqEsk7D5fxh4h1PpWrjp0JPwCZpthQ" ;
NSString * const AppClient =@"InIZtqwBnsMvvMgKSnFrZaLMvdhxIzRvhTDigqv3" ;
///set initial shared object on helper
static netra *sharedObject;

///create GDC dispatch
static dispatch_once_t onceToken;

//set global variable for shared object
static netra *shared = nil;
+ (netra*)sharedInstance
{
	dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return sharedObject;
}

@end

//
//  netra.h
//  #stopSmoke
//
//  Created by Flash on 11/12/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface netra : NSObject
{
	
}
//set shared manager
//create initial for shared manager here
+(netra *) sharedInstance;
extern NSString * const appId;
extern NSString * const AppClient;

@end

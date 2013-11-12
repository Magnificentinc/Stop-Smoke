//
//  Beetlebox_AppDelegate.h
//  #stopSmoke
//
//  Created by Flash on 11/12/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartSmokeViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
	StartSmokeViewController *startsMoke;
}

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end

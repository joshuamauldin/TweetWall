//
//  SocialFrameAppDelegate.m
//  SocialFrame
//
//  Created by Xavier Damman on 8/21/10.
//  Copyright (c) 2010 Commentag SPRL. All rights reserved.
//


#import "SocialFrameAppDelegate.h"

#import "SocialFrameViewController.h"

@implementation SocialFrameAppDelegate


@synthesize window;

@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	application.statusBarHidden = YES;
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
	navController.navigationBar.barStyle = UIBarStyleBlack;
	navController.navigationBar.translucent = YES;
    [window addSubview:navController.view];
    [window makeKeyAndVisible];
	[navController release];
    
	return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [viewController release];
    [super dealloc];
}

@end


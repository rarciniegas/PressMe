//
//  PressMe1AppDelegate.h
//  PressMe1
//
//  Created by Steven Luis on 10/13/11.
//  Copyright 2011 FIU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PressMe1ViewController;

@interface PressMe1AppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet PressMe1ViewController *viewController;

@end

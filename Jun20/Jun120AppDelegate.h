//
//  Jun120AppDelegate.h
//  Jun20
//
//  Created by Sir Andrew on 6/20/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Jun120AppDelegate: UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@end

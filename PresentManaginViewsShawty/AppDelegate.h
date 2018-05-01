//
//  AppDelegate.h
//  PresentManaginViewsShawty
//
//  Created by Laurence Wingo on 11/6/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class SecondViewController;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UINavigationController *navigationController;
@property (nonatomic, strong) ViewController *viewController;
@property (nonatomic, strong) SecondViewController *secondViewController;
@end

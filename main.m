//
//  main.m
//  yoot app in C
//
//  Created by Alex So on 9/16/23.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        return UIApplicationMain(argc, argv, nil, appDelegateClassName);
    }
}

//
//  main.m
//  iOSClassAndObject
//
//  Created by YP-21031 on 2022/2/22.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        id objc = [[NSObject alloc] init];
        size_t mallocSize = malloc_size((__bridge const void *)(objc));
        
        // 模拟器与真机相同
        NSLog(@"%zd",class_getInstanceSize(NSObject.class)); // 8
        NSLog(@"%zd", sizeof(objc)); // 8
        NSLog(@"%zd", mallocSize); // 16
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

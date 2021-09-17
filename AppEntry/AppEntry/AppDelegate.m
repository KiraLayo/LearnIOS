//
//  AppDelegate.m
//  AppEntry
//
//  Created by YP-21031 on 2021/9/17.
//

#import "AppDelegate.h"
#import "ViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark  AppDelegate lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    #if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_13_0
    // 这里使用__IPHONE_OS_VERSION_MIN_REQUIRED 模拟版本，MAX指定MAX
    // UIApplicationDelegate 协议中有声明 UIWindow
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = [[ViewController alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    #endif
    
    return YES;
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
}

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(nullable NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions API_AVAILABLE(ios(6.0)){
    return true;
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_13_0

// 管理SceneDelegate的方法

#pragma mark - UISceneSession lifecycle

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options API_AVAILABLE(ios(13.0)){
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions  API_AVAILABLE(ios(13.0)){
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}

#endif

@end

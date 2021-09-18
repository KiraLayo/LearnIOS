#  iOS 程序启动优化（入口变迁）

## [WWDC 2021 Optimizing App Launch](https://developer.apple.com/videos/play/wwdc2019/423/)

 使用 **OC** 探索而非 **Swift** 演示主要原因就是预编译宏方便处理

## 涉及的预编译宏

* **__IPHONE_OS_VERSION_MIN_REQUIRED**
  * Xcode配置 deployoment target version

* **__IPHONE_OS_VERSION_MAX_ALLOWED**
  * 当前设备的BaseSDK，预编译阶段，在Xcode中也就是当前 Xcode的SDK 版本

## iOS 12 and earlier

![iOS 12 and earlier](./ios12%20and%20earlier.png)

* 只有一个主 **window**

* **UIAppDelegate** 统一管理应用生命周期和UI生命周期

### 相关代码

[AppDelegate 初始化程序入口window](./AppEntry/AppDelegate.m);

## iOS 13 and later and Xcode 11 

![iOS 13 and later App Delegate](./ios13%20and%20later%20App%20Delegate.png)

![iOS 13 and later App Delegate](./ios13%20and%20later%20App%20Delegate.png)

* 多个 **window****，iPad** 上可以使用多个 **window**，**iPhone** 上目前只有一个

* **UIAppDelegate** 管理应用生命周期和 **ScenceDelegate** 的生命周期

* **info.plist** 中通过 **Application Scene Manifest** 指定 **delegate** 和 **storyboard**

应用支持的每个 **场景** 都需要在 **Application Scene Manifest**

* **Application Scene Manifest**
  * Enable Mutiple Windows: **Boolean** 
  * Scene Configuration: **Dictionary**
    * Application Session Role: **Array**
      * Configuration Name: **String**
      * Delegate Class Name: **String**
      * Storyboard Name: **String**

> **Application Session Role**: 配置 **场景**
> 
> **Storyboard Name**：可以不填写，使用代码进行导入

### 相关代码

[SceneDelegate 初始化window](./AppEntry/SceneDelegate.m)


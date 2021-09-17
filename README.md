# LearnIOS

学习 **iOS** 相关知识与总结的项目

## 目录

1. [iOS项目入口变化](./AppEntry);




#  iOS 项目入口变化

## 使用到的预编译宏

* **__IPHONE_OS_VERSION_MIN_REQUIRED**
  * Xcode配置 deployoment target version

* **__IPHONE_OS_VERSION_MAX_ALLOWED**
  * 当前设备的BaseSDK，预编译阶段，在Xcode中也就是当前 Xcode的SDK 版本

## before iOS 13

* 单 **window**

* **UIAppDelegate** 统一管理应用生命周期

* **application:didFinishLaunchingWithOptions:** 作为程序入口

## after iOS 13



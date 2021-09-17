#  iOS 项目入口变化

使用OC而非Swift演示主要原因就是预编译宏方便处理

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



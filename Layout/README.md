# iOS 布局

主要描述 **UIView** 的布局相关信息

### 配置调整大小行为 Configuring the Resizing Behavior

#### contentMode

视图的边界改变时视图层的缓存位图如何调整，通常用于实现可调整大小的控件，并非每次都会重新绘制，描述缩放行为或者在 view 中特定地点。



```
enum ContentMode : Int

case scaleToFill

<!-- 部分区域会变成透明，以最长边缩放 -->
case scaleAspectFit

<!-- 部分区域被裁剪，以最短边缩放 -->
case scaleAspectFill

<!-- 调用 setNeedsDisplay() 进行重新绘制 -->
case redraw

case center

<!-- 默认先剧中 -->
case top
case bottom

case left
case right
case topLeft
case topRight
case bottomLeft
case bottomRight

```

## 

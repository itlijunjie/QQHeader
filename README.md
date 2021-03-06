## QQHeader
[![Version](https://img.shields.io/cocoapods/v/QQHeader.svg?style=flat)](http://cocoapods.org/pods/QQHeader)
[![Platform](https://img.shields.io/cocoapods/p/QQHeader.svg?style=flat)](http://cocoapods.org/pods/QQHeader)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![build](https://travis-ci.org/itlijunjie/QQHeader.svg?branch=master)](https://travis-ci.org/itlijunjie/QQHeader)

一个高仿QQ讨论组头像的实现
## Preview
<img src="https://raw.githubusercontent.com/itlijunjie/QQHeader/master/ScreenShot.png" width="320px"/></br>
## Installation
手动添加Classes文件中的类。
### CocoaPods
```ruby
pod 'QQHeader'
```
### Carthage
```ogdl
github "itlijunjie/QQHeader"
```
## 原理和使用方法
每个头像可以分为一个个的小头像：<br/>
`JJCustomLayer`就是每个小头像：主要负责头像的裁剪<br/>
`JJHeaders`就是最终的头像：主要负责计算出每个小头像的center<br/>
`JJHeadersConfig`主要负责头像参数的配置，目前只配置了裁剪角度的大小<br/>
### Objective-C
```objective-c
UIView *view = [JJHeaders createHeaderView:viewWH
                                    images:@[[UIImage imageNamed:@"0"],
                                             [UIImage imageNamed:@"1"],
                                             [UIImage imageNamed:@"2"],
                                             [UIImage imageNamed:@"3"],
                                             [UIImage imageNamed:@"4"]]];
```
### Swift
```swift
let view = JJHeaders.createHeaderView(viewWH, images: [
                                                                UIImage(named: "0")!,
                                                                UIImage(named: "1")!,
                                                                UIImage(named: "2")!,
                                                                UIImage(named: "3")!,
                                                                UIImage(named: "4")!
                                                                ])
```
## 联系方式
QQ：470058952</br>
我的微信：</br>
<img src="https://raw.githubusercontent.com/itlijunjie/image/master/微信.png" width="200px" /></br>
## License
QQHeader is under [WTFPL](http://www.wtfpl.net/). You can do what the fuck you want with QQHeader. See [LICENSE](LICENSE) file for more info.

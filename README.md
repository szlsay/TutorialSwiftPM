# TutorialSwiftPM
Specification for Cocoapods、Carthage、Swift Package Manager



## 1. [Cocoapods](https://guides.cocoapods.org/making/index.html)

### 1. create project

在终端中输入下面的命令

> pod lib create TutorialSwiftPM 

输入日志见下


```shell
Shenzhaoliang@shentian Test % pod lib create TutorialSwiftPM 
Cloning `https://github.com/CocoaPods/pod-template.git` into `TutorialSwiftPM`.
Configuring TutorialSwiftPM template.

------------------------------

To get you started we need to ask a few questions, this should only take a minute.

If this is your first time we recommend running through with the guide: 
 - https://guides.cocoapods.org/making/using-pod-lib-create.html
 ( hold cmd and double click links to open in a browser. )


What platform do you want to use?? [ iOS / macOS ]
 > 
ios
What language do you want to use?? [ Swift / ObjC ]
 > 
swift
Would you like to include a demo application with your library? [ Yes / No ]
 > 
yes
Which testing frameworks will you use? [ Quick / None ]
 > 
quick
Would you like to do view based testing? [ Yes / No ]
 > 
yes
Running pod install on your new library.


Analyzing dependencies
Downloading dependencies
Installing FBSnapshotTestCase (2.1.4)
Installing Nimble (7.3.4)
Installing Nimble-Snapshots (6.3.0)
Installing Quick (1.2.0)
Installing TutorialSwiftPM (0.1.0)
Generating Pods project
Integrating client project

[!] Please close any current Xcode sessions and use `TutorialSwiftPM.xcworkspace` for this project from now on.
Pod installation complete! There are 5 dependencies from the Podfile and 5 total pods installed.

[!] Automatically assigning platform `iOS` with version `9.3` on target `TutorialSwiftPM_Example` because no platform was specified. Please specify a platform for this target in your Podfile. See `https://guides.cocoapods.org/syntax/podfile.html#platform`.

 Ace! you're ready to go!
 We will start you off by opening your project in Xcode
  open 'TutorialSwiftPM/Example/TutorialSwiftPM.xcworkspace'

To learn more about the template see `https://github.com/CocoaPods/pod-template.git`.
To learn more about creating a new pod, see `https://guides.cocoapods.org/making/making-a-cocoapod`.
```

#### 1.2 setup podspec

```ruby
Pod::Spec.new do |s|
  s.name             = 'TutorialSwiftPM'
  s.version          = '0.0.1'
  s.summary          = 'A short description of TutorialSwiftPM.'
  s.description      = 'A long description of TutorialSwiftPM.'

  s.homepage         = 'https://github.com/STShenZhaoliang'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'stszl' => 'stszl@sina.cn' }
  s.source           = { :git => 'https://github.com/STShenZhaoliang/TutorialSwiftPM.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.source_files = 'Sources/TutorialSwiftPM/*.swift'
end

```



### 1.3 use 
在Example文件夹中，编写podfile，添加组件引用

```
pod 'TutorialSwiftPM', :path => '../'
```




## 2. [Carthage](https://github.com/Carthage/Carthage)

### 2.1 create project
- 创建一个framework工程，命名为`TutorialSwiftPM`并保存到桌面
- 将TutorialSwiftPM文件夹中的文件移动到本仓库中
- 将Sources文件添加到TutorialSwiftPM.xcodeproj中

### 2.2 setup project
- Mach-O Type改为Static Library
- Target 改为iOS13.0
- Device 改为iPhone/iPad


## 3. [SwiftPackageManager](https://github.com/apple/swift-package-manager)

### 3.1 create project

在终端中输入下面的命令

> swift package init

输入日志见下

```
Creating library package: TutorialSwiftPM
Creating Package.swift
Creating Sources/
Creating Sources/TutorialSwiftPM/TutorialSwiftPM.swift
Creating Tests/
Creating Tests/LinuxMain.swift
Creating Tests/TutorialSwiftPMTests/
Creating Tests/TutorialSwiftPMTests/TutorialSwiftPMTests.swift
Creating Tests/TutorialSwiftPMTests/XCTestManifests.swift
```

### 3.2 setup Package.swift

1. 添加platforms
```swift
  platforms: [
    	.iOS(.v13)
    ]
```

2. 添加swiftLanguageVersions
```swift
  swiftLanguageVersions: [
        .v5
    ]
```

全部配合内容见下
```swift
// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TutorialSwiftPM",
    platforms: [
          .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "TutorialSwiftPM",
            targets: ["TutorialSwiftPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "TutorialSwiftPM",
            dependencies: []),
        .testTarget(
            name: "TutorialSwiftPMTests",
            dependencies: ["TutorialSwiftPM"]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
```


## 4 工程优化
### 4.1 文件结构优化
- 移除Cocoapods源代码文件夹，即删除案例中的TutorialSwiftPM文件夹

- podspec中source_files使用SwiftPM源代码文件夹，修改为'Sources/TutorialSwiftPM/*.swift'

- Example文件夹工程重新pod init --verbose

### 4.2 添加测试文件
编写内容见下

```swift
import UIKit

open class STView: UIView{
    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    public required  init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

```


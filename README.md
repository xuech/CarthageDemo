# CarthageDemo 
---

### 一、安装
1. 下载pkg： <https://github.com/Carthage/Carthage/releases>
2. 使用 Homebrew 进行安装：

```
brew update
brew install carthage

```

### 二、使用
1. 第一步, 在项目的根目录下新建一个无后缀的`Cartfile`文件
2. 第二步, 打开命令终端，cd到所在项目目录，执行
```
carthage update --platform iOS --no-use-binaries

```
###### *会自动checkout所有依赖的git仓库，并生成framework，如果不指定平台，则会生成依赖自身支持的所有平台的文件。*

3. 第三步, 引入Framework
- 把生成的.framework文件引入到项目中，Targate->General->Linked Frameworks and Libraries 下 `➕` 添加第三方的framework（用到几个加几个）

- 选中Targets -> Build Phases -> `➕` (New Run Script Phase”) Shell的下面一行填入：`/usr/local/bin/carthage copy-frameworks`

- 并在 “Input Files” 选项里添加 framework 路径，如:`$(SRCROOT)/Carthage/Build/iOS/SwiftyJSON.framework`(用到几个添加几个)

#### 最后command+B编译一下，并在代码里import SwiftyJSON的头文件就可以用了！！

## 使用说明
### 下载并打包
我写了一个install.sh脚本，执行下面的命令，会把C++依赖的所有github.com仓库打包
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/eflag-rd/cpp-dependencies/master/tools/download.sh)"
```

### 添加第三方库
**注意务必使用特定的发行版本**
```shell
# 使用相应的仓库名和发行版本替换repo_name和release_version
git submodule add https://github.com/path/to/repo_name.git third_party/repo_name
cd third_party/repo_name
git checkout release-version
cd ../..
git add third_party/repo_name
git commit -m "use repo_name as release-version"
```

## 第三方库的用途
使用`git submodule status`可以查看所使用的三方库版本
#### googletest
+ googletest/googletest 单元测试
+ googletest/googlemock googletest的扩展，用于编写和使用C++ mock class

#### gflags
+ 命令行参数组件

#### glog
+ 日志组件
+ 安装时可以指定依赖gflags, `./configure --with-gflags=/path/to/gflags-header-directory`

#### gperftools
+ 内部的tcmalloc组件，提供高效的内存管理，只需要编译时链接tcmalloc库

#### protobuf
+ 消息序列化和反序列工具集

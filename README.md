## 使用说明
### 下载并打包
我写了一个install.sh脚本，执行下面的命令，会把C++依赖的所有github.com仓库打包
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/eflag-rd/cpp-dependencies/master/tools/install.sh)"
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

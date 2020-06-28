# hot_top_flutter

创建热词项目

# 记录一点问题
1. 初次安装启动，app 是黑屏状态，可以尝试添加启动图
2. 可创建需要的所有依赖 快速工程，优先添加常用的网络库等东西；
3. 删除无用的备注信息
4. 过滤 Flutter 的日志，使用关键字：flutter
5. SingleChildScrollView 内部只能放一个 Widget，但这个 Widget 内部可以放很多 Widget。SingleChildScrollView 需要放到外层，不能放到 Column 中。
6. 使用 FlutterJsonBeanFactory 完成 json 的解析和数据实体的使用。


## 依赖库 (https://pub.dev/)
### 1. 添加网络层 dio : https://pub.dev/packages/dio, 

文档说明：https://github.com/flutterchina/dio/blob/master/README-ZH.md
参考了：https://www.jianshu.com/p/14cbcbaa74b7



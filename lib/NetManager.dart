/*
 * Created with WangQing.
 * User: WangQing
 * Date: 2020/6/28
 * Time: 22:52
 * target: 网络管理类
 */
import 'package:dio/dio.dart';

import 'DBApiInterceptor.dart';

class NetManager {
  NetManager._();

  static final _instance = NetManager._();

  factory NetManager.getInstance() => _instance;

  Future<T> request<T>(String url) async {
    var dio = getDio();

    // 方式 1：拦截器修改类型
    dio.interceptors.add(DBApiInterceptor<T>());
    Response response = await dio.get(url);
    return response.data;

//    // 方式 2： Response 直接转 T 类型
//    Response response = await dio.get(url);
//    return JsonConvert.fromJsonAsT<T>(response.data);

    // 方式 3：使用 DefaultTransformer，但是这个没测试完成，暂不推荐
  }

  Dio getDio() {
    var dio = Dio();
    return dio;
  }
}

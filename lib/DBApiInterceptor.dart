/*
 * Created with WangQing.
 * User: WangQing
 * Date: 2020/6/28
 * Time: 22:23
 * target: 拦截器
 */
import 'package:dio/dio.dart';

import 'generated/json/base/json_convert_content.dart';

class DBApiInterceptor<T> extends Interceptor {
  @override
  Future onRequest(RequestOptions options) {
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) async {
//    JsonConvert.fromJsonAsT<T>(response.data);
    return JsonConvert.fromJsonAsT<T>(response.data);
  }
}

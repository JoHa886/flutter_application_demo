import 'package:dio/dio.dart';

Dio initDio() {
  BaseOptions _baseOptions =
      BaseOptions(baseUrl: "http://127.0.0.1:3000", connectTimeout: 5000);
  Dio dio = Dio(_baseOptions);

  // 添加拦截器
  // dio.interceptors.add(InterceptorsWrapper(
  //   onRequest: (options, handler) {
  //     print("请求拦截！");
  //   },
  //   onResponse: (res, handler) {
  //     print("响应拦截");
  //   },
  //   onError: (error, handler) {
  //     print("响应拦截");
  //   },
  // ));
  return dio;
}

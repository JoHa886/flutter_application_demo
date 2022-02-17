import 'package:dio/dio.dart';

class HomeApi {
  final Dio _dio;
  HomeApi(this._dio);

  Future<dynamic> homeList({String key = "999"}) async {
    Response res = await _dio.get("aaa/bbb", queryParameters: {"key": key});
  }
}

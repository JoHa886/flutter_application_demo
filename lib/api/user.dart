import 'package:dio/dio.dart';

class UserApi {
  final Dio _dio;

  UserApi(this._dio);

  /// 用户登录
  Future<dynamic> login(
      {required String username, required String password}) async {
    // 表单数据
    FormData formData = FormData.fromMap({
      "user_name": username,
      "password": password,
    });
    // 发送 post 请求
    Response res = await _dio.post('/api/v1/user/login', data: formData);
    print("res:");
    print(res.data["data"]);

    if (res.data["data"] != null) {
      return res.data;
    } else {
      return false;
    }
  }
}

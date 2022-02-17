import 'package:dio/dio.dart';
import 'home.dart';
import 'init_dio.dart';

class Api {
  late Dio _dio;

  Api(){
    _dio = initDio();
  }

  HomeApi get ad => HomeApi(_dio);
  
}
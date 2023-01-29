import 'package:dio/dio.dart';

import '../config/env/env.dart';

class CustomDio extends DioForNative {

  CustomDio()
      : super(BaseOptions(
    baseUrl: Env.i['backend_base_url'] ?? '',
    connectTimeout: 5000,
    receiveTimeout: 60000,)) {
    nterceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
    ));
  }


}



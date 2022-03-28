import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  factory DioHelper() {
    return _mainDioHelper;
  }

  DioHelper._internal();

  static final DioHelper _mainDioHelper = DioHelper._internal();

  void _addDioLogger(Dio _dio) {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        compact: false,
      ),
    );
  }

  Dio getDio() {
    final BaseOptions _option = BaseOptions(
      // baseUrl: 'https://centro.pelindo.co.id/api/',
      // baseUrl: 'https://pelindo.primakom.co.id/api/',
      baseUrl: 'http://192.168.17.18/api/',
      connectTimeout: 60000,
      receiveTimeout: 60000,
      contentType: 'application/json',
      headers: {
        // 'Authorization': _mainHiveController.getToken(),
        // 'Authorization': _mainHiveController.getToken(),
      },
    );

    final Dio _dio = Dio(_option);
    _addDioLogger(_dio);
    return _dio;
  }
}

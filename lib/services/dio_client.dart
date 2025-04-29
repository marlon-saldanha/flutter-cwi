import 'package:dio/dio.dart';

class DioClient {
  static final Dio _dio = _createDioInstance();
  static const baseUrl = String.fromEnvironment('API_URL');
  static const apiKey = String.fromEnvironment('API_KEY');

  DioClient._();

  static Dio _createDioInstance() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        queryParameters: {
          'api_key': apiKey,
        }
      ),
    );
    
    return dio;
  }

  static Dio get instance => _dio;
}
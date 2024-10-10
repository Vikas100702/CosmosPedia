import 'package:cosmospedia/src/core/common_utils.dart';
import 'package:cosmospedia/src/core/const/endpoints.dart';
import 'package:cosmospedia/src/core/dev_utils.dart';
import 'package:cosmospedia/src/core/shared_pref_utils.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio
      ..options.baseUrl = ApodEndPoints.baseUrl
      ..options.connectTimeout = const Duration(seconds: 60)
      ..options.receiveTimeout = const Duration(seconds: 60)
      ..options.responseType = ResponseType.json
      ..options.contentType = Headers.jsonContentType
      ..interceptors.add(
          PrettyDioLogger(requestBody: true, compact: true, request: true));
  }

  // Send Get Request
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    bool hideSoftKeyBoard = true,
  }) async {
    if (hideSoftKeyBoard) {
      hideKeyBoard();
    }
    debugLog("Get request bearer token: ${await SharedPrefUtils.getToken()}");
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options ??
            Options(headers: {
              "authorization": "bearer ${await SharedPrefUtils.getToken()}"
            }),
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    bool hideSoftKeyBoard = true,
  }) async {
    if (hideSoftKeyBoard) hideKeyBoard();
    debugLog("Post request bearer token: ${await SharedPrefUtils.getToken()}");
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options ??
            Options(headers: {
              "authorization": "bearer ${await SharedPrefUtils.getToken()}"
            }),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

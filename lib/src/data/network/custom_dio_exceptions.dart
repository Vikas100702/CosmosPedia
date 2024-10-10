import 'package:cosmospedia/src/core/utils/response_type_def.dart';
import 'package:dio/dio.dart';

class CustomDioExceptions implements Exception {
  late String message;

  CustomDioExceptions.fromDioExceptions(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        message = _handleStatusError(
          dioException.response?.statusCode,
          dioException.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioExceptionType.unknown:
        message = "Unexpected error occurred";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String _handleStatusError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return error["message"] ?? 'Bad Request';
      case 401:
        return error["message"] ?? 'Unauthorized';
      case 403:
        return error["message"] ?? 'Forbidden';
      case 404:
        return error["message"] ?? 'Not Found';
      case 406:
        return error["message"] ?? 'Input Mismatched';
      case 422:
        return error["message"] ?? 'Cannot proceed with the data provided';
      case 500:
        return error["message"] ?? 'Internal Server Error';
      case 502:
        return error["message"] ?? 'Bad Gateway';
      default:
        return error["message"] ??
            'Oops...!!! Something went wrong...!!!🙁🙁🙁';
    }
  }

  /// call this method from api repo to handle the error

  static CustomError handleError(DioException e) {
    final errorMessage = CustomDioExceptions.fromDioExceptions(e).toString();
    return CustomError(errorMessage, e.response?.statusCode);
  }

  @override
  String toString() => message;
}


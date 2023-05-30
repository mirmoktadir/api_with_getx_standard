import 'package:api_with_getx_standard/config/translations/strings_enum.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioExceptions implements Exception {
  String message = "";
  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = Strings.requestCanceled.tr;
        break;
      case DioErrorType.connectionTimeout:
        message = Strings.connectionTimeout.tr;
        break;
      case DioErrorType.receiveTimeout:
        message = Strings.receiveTimeout.tr;
        break;
      case DioErrorType.badResponse:
        message = _handleError(
            dioError.response!.statusCode!.toInt(), dioError.response!.data);
        break;
      case DioErrorType.sendTimeout:
        message = Strings.sendTimeout.tr;
        break;
      case DioErrorType.unknown:
        message = Strings.connectionProblem.tr;
        break;
      default:
        message = Strings.somethingWrong.tr;
        break;
    }
  }

  String _handleError(int statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return error['error'] ?? error["message"] ?? Strings.badRequest.tr;
      case 404:
        return error['error'] ?? error["message"] ?? Strings.urlIncorrect.tr;
      case 500:
        return error['error'] ??
            error["message"] ??
            Strings.internalServerError.tr;
      default:
        return error['error'] ?? error["message"] ?? Strings.somethingWrong.tr;
    }
  }

  @override
  String toString() => message;
}

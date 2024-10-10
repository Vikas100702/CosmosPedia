import 'package:cosmospedia/src/core/utils/response_type_def.dart';
import 'package:cosmospedia/src/data/model/apod_model/apod_model.dart';
import 'package:cosmospedia/src/data/network/custom_dio_exceptions.dart';
import 'package:cosmospedia/src/data/network/data_source/remote/apod_api_service/apod_api_service.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class ApodRepository {
  final ApodApiService _apodApiService;

  ApodRepository(this._apodApiService);

  FutureResult<ApodModel> fetchApodImagesData() async {
    try {
      var response = _apodApiService.fetchApodImages(count: 5);
      final model = apodModelFromJson(response.toString());
      return right(model as ApodModel);
    } on DioException catch (e) {
      var error = CustomDioExceptions.handleError(e);
      return left(error);
    }
  }
}

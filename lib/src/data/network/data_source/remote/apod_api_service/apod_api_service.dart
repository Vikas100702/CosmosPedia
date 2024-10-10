import 'package:cosmospedia/src/core/const/endpoints.dart';
import 'package:cosmospedia/src/data/network/data_source/remote/api_service.dart';

class ApodApiService extends ApiService {
  Future fetchApodImages({required int count}) async {
    var response = api.get('${ApodEndPoints.apod}/$count');
    return response;
  }
}

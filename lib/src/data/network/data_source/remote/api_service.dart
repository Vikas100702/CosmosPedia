import 'package:cosmospedia/src/core/service_locator.dart';
import 'package:cosmospedia/src/data/network/dio_client.dart';
import 'package:flutter/cupertino.dart';

abstract class ApiService{
@protected
final api = getIt<DioClient>();
}
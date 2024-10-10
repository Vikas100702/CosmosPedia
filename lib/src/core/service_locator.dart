import 'package:cosmospedia/src/data/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  static void setUp() {
    getIt.registerSingleton(Dio());
    getIt.registerSingleton(DioClient(getIt<Dio>()));
  }
}

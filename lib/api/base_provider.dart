import 'package:get/get.dart';
import 'package:something/api/api_constants.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = ApiConstants.baseUrl;
  }
}

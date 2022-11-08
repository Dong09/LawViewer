import 'package:get/get.dart';
import 'package:something/api/api_provider.dart';
import 'package:something/api/api_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiProvider(), permanent: true);
    Get.put(ApiRepository(apiProvider: ApiProvider()), permanent: true);
  }
}

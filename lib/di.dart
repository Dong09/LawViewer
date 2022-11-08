import 'package:get/get.dart';
import 'package:something/shared/services/storage_services.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }
}

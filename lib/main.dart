import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:something/app_binding.dart';
import 'package:something/di.dart';
import 'package:something/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
      // initialBinding 全局依赖注入
      initialBinding: AppBinding(),
    );
  }
}

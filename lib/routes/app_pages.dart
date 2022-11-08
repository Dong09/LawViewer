// link with sub-library
import 'package:get/get.dart';
import 'package:something/modules/splash/splash_binding.dart';
import 'package:something/modules/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    // GetPage(
    //   name: Routes.AUTH,
    //   page: () => const AuthScreen(),
    //   binding: AuthBinding(),
    // )
  ];
}

import 'package:get/get.dart';

import '../components/navbar/bottom_navbar.dart';
import '../components/navbar/navbar_binding.dart';
import '../modules/Page2/bindings/page2_binding.dart';
import '../modules/Page2/views/page2_view.dart';
import '../modules/Page3/bindings/page3_binding.dart';
import '../modules/Page3/views/page3_view.dart';
import '../modules/Page4/bindings/page4_binding.dart';
import '../modules/Page4/views/page4_view.dart';
import '../modules/Page5/bindings/page5_binding.dart';
import '../modules/Page5/views/page5_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const NAV = Routes.NAV;
  static const HOME = Routes.HOME;

  static final routes = [
    /// NAV BAR
    GetPage(
      name: _Paths.NAV,
      page: () => BottomNavbar(),
      binding: NavbarBinding(),
    ),

    ///
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PAGE2,
      page: () => const Page2View(),
      binding: Page2Binding(),
    ),
    GetPage(
      name: _Paths.PAGE3,
      page: () => const Page3View(),
      binding: Page3Binding(),
    ),
    GetPage(
      name: _Paths.PAGE4,
      page: () => const Page4View(),
      binding: Page4Binding(),
    ),
    GetPage(
      name: _Paths.PAGE5,
      page: () => const Page5View(),
      binding: Page5Binding(),
    ),
  ];
}

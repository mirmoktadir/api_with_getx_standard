import 'package:api_with_getx_standard/app/modules/Page2/controllers/page2_controller.dart';
import 'package:api_with_getx_standard/app/modules/Page3/controllers/page3_controller.dart';
import 'package:api_with_getx_standard/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../modules/Page4/controllers/page4_controller.dart';
import '../../modules/Page5/controllers/page5_controller.dart';

class NavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<Page2Controller>(
      () => Page2Controller(),
    );
    Get.lazyPut<Page3Controller>(
      () => Page3Controller(),
    );
    Get.lazyPut<Page4Controller>(
      () => Page4Controller(),
    );
    Get.lazyPut<Page5Controller>(
      () => Page5Controller(),
    );
  }
}

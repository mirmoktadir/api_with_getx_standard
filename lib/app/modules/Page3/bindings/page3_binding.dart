import 'package:get/get.dart';

import '../controllers/page3_controller.dart';

class Page3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page3Controller>(
      () => Page3Controller(),
    );
  }
}

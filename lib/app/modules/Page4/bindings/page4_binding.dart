import 'package:get/get.dart';

import '../controllers/page4_controller.dart';

class Page4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page4Controller>(
      () => Page4Controller(),
    );
  }
}

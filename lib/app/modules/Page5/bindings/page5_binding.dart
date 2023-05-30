import 'package:get/get.dart';

import '../controllers/page5_controller.dart';

class Page5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page5Controller>(
      () => Page5Controller(),
    );
  }
}

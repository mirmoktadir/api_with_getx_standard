import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/page3_controller.dart';

class Page3View extends GetView<Page3Controller> {
  const Page3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page3View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Page3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

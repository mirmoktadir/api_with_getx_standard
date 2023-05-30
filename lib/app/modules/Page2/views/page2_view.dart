import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/page2_controller.dart';

class Page2View extends GetView<Page2Controller> {
  const Page2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Page2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/page5_controller.dart';

class Page5View extends GetView<Page5Controller> {
  const Page5View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page5View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Page5View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

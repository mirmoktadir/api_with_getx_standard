import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/page4_controller.dart';

class Page4View extends GetView<Page4Controller> {
  const Page4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page4View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Page4View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

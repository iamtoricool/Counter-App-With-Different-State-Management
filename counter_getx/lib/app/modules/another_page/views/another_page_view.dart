import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/another_page_controller.dart';

class AnotherPageView extends GetView<AnotherPageController> {
  const AnotherPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnotherPageView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ObxValue(
              (currentValue) => Text(
                "Counter's ${controller.oldValue == currentValue.value ? 'old' : 'updated'} value is: ${currentValue.value}",
                style: const TextStyle(fontSize: 20),
              ),
              controller.counterRepo.count,
            ),
          ),
          TextButton(
            onPressed: () => Get.back(closeOverlays: true),
            child: const Text('Get back to previous screen'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.counterRepo.decrement,
        child: const Icon(Icons.remove),
      ),
    );
  }
}

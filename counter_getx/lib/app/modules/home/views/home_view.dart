import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text(
                "Countet's current value is : ${controller.counterRepo.count.value}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          TextButton(
            onPressed: () => Get.toNamed(
              '/another-page',
              arguments: controller.counterRepo.count.value,
            ),
            child: const Text('Navigate to another page'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.counterRepo.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

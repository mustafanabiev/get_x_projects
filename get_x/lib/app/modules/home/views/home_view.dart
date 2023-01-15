import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_x/app/modules/login/views/login_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.changeTheme(
                Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
              );
            },
            icon: const Icon(Icons.light_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('count: ${controller.count}')),
            ElevatedButton(
              onPressed: () {
                Get.to(LoginView());
              },
              child: const Text('change theme'),
            ),
            ElevatedButton(
              onPressed: controller.change,
              child: const Text('change random'),
            ),
            const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

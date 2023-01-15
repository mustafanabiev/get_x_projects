import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/theme_controller.dart';

class ThemeView extends GetView<ThemeController> {
  const ThemeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThemeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ThemeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_x/app/modules/home/controllers/home_controller.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final HomeController c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoginView is working: ${c.count}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

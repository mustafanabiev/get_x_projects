import 'dart:math';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;
  void change() => count.value = Random().nextInt(10);
}

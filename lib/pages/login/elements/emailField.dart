import 'package:flutter/material.dart';
import 'package:marketsys/pages/login/login.controller.dart';
import 'package:get/get.dart';

class EmailFiel extends GetView<LoginController>  {
  const EmailFiel({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.emailField,
      decoration: const InputDecoration(hintText: 'Email'),
    );
  }
}

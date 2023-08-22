import 'package:flutter/material.dart';
import 'package:marketsys/pages/login/login.controller.dart';
import 'package:get/get.dart';

class PassField extends GetView<LoginController> {
  const PassField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordField,
      decoration: const InputDecoration(hintText: 'Senha'),
      obscureText: true,
    );
  }
}

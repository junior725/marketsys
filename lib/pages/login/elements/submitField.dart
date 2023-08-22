import 'package:flutter/material.dart';
import 'package:marketsys/pages/login/login.controller.dart';
import 'package:get/get.dart';

class SubmitButton extends GetView<LoginController> {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {controller.tryTologin(context);},
        child: const Text("Entrar")
    );
  }
}

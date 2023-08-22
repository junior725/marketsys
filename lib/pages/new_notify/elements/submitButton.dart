import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/new_notify/newnotify.controller.dart';



class SubmitButtonN extends GetView<NotifyController> {
  const SubmitButtonN({super.key});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {controller.sendMessage(context);},
        child: const Text("Enviar notificação")
    );
  }
}

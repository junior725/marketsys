import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/new_notify/newnotify.controller.dart';

class MinutesField extends GetView<NotifyController> {
  const MinutesField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.minutesField,
      decoration: const InputDecoration(hintText: 'Minutos até a notificação'),
    );
  }
}

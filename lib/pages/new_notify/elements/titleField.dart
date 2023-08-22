import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/new_notify/newnotify.controller.dart';

class TitleField extends GetView<NotifyController> {
  const TitleField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.titleField,
      decoration: const InputDecoration(hintText: 'Título'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/new_notify/newnotify.controller.dart';

class MessageField extends GetView<NotifyController> {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.messageField,
      decoration: const InputDecoration(hintText: 'Mensagem'),
    );
  }
}

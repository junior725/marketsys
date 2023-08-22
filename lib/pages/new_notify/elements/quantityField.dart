import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/new_notify/newnotify.controller.dart';

class QuantityField extends GetView<NotifyController> {
  const QuantityField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.quantityField,
      decoration: const InputDecoration(hintText: 'Quantidade de notificações'),
    );
  }
}

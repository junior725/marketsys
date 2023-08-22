import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/new_notify/functions/newnotify_functions.dart';


class NotifyController extends GetxController {
  TextEditingController titleField = TextEditingController();
  TextEditingController messageField = TextEditingController();
  TextEditingController minutesField = TextEditingController();
  TextEditingController quantityField = TextEditingController();
  final dropValue = ValueNotifier('');
  final dropOpcoes = [
    //'Nubank',
    //'C6 Bank',
    //'Banco Inter',
    //'Pic pay',
    //'Iti',
    //'Bradesco',
    'Skrill',
    //'Next',
    //'Eduzz',
    //'Kiwify',
    //'Hotmart',
    //'Monetizze',
    //'Shopify',
    //'Braip'
  ];

  void sendMessage(BuildContext context){
    String minut = minutesField.value.text.isEmpty ? '1' : minutesField.value.text;
    String quanti = quantityField.value.text.isEmpty ? '1' : quantityField.value.text;

    NotificationManager().simpleNotificationShow(titleField.value.text,
        messageField.value.text, minut, quanti);
  }
}


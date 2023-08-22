import 'package:flutter/material.dart';
import 'package:marketsys/pages/new_notify/elements/messageField.dart';
import 'package:marketsys/pages/new_notify/elements/minutesField.dart';
import 'package:marketsys/pages/new_notify/elements/quantityField.dart';
import 'package:marketsys/pages/new_notify/elements/selectField.dart';
import 'package:marketsys/pages/new_notify/elements/submitButton.dart';
import 'package:marketsys/pages/new_notify/elements/titleField.dart';
import 'package:marketsys/pages/new_notify/functions/newnotify_functions.dart';

class NewNotify extends StatefulWidget {
  const NewNotify({Key? key}) : super(key: key);

  @override
  State<NewNotify> createState() => _NewNotify();
}

class _NewNotify extends State<NewNotify> {

  @override
  void initState() {
    super.initState();
    NotificationManager().initNotification();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Área do cliente"), leading: const Icon(Icons.person)),
        body: _body()
    );
  }
  _body() {
    return Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(12),
          children: const [
            TitleField(),
            MessageField(),
            MinutesField(),
            QuantityField(),
            SelectField(),
            Divider(),
            SubmitButtonN(),
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';

class ErrorLogin extends StatelessWidget {
  final String message;

  const ErrorLogin({Key? key, required this.message}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Marketing System'),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Fechar'),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:marketsys/pages/login/elements/emailField.dart';
import 'package:marketsys/pages/login/elements/passField.dart';
import 'package:marketsys/pages/login/elements/submitField.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text("Área de login"))),
        body: _body()
    );
  }
  _body() {
    return Center(
        child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(12),
            children: const [
              Center(child: Text("Marketing System", style: TextStyle(
                fontSize: 36,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),)),
              Divider(),
              EmailFiel(),
              PassField(),
              SubmitButton()
            ]
        )
    );
  }
}

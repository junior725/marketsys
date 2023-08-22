import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/login/login.bindings.dart';
import 'package:marketsys/pages/login/login.dart';

class MarketSystem extends StatelessWidget {
  const MarketSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: LoginBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Marketing System',
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: const Login(),
    );
  }
}

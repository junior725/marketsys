import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:marketsys/pages/main/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MarketSystem());
}


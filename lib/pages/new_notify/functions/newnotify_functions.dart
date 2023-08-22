import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationManager{
  final FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();
  Future<void> initNotification() async {
    DarwinInitializationSettings initializationIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification: (id, title, body, payload) {},
    );
    InitializationSettings initializationSettings = InitializationSettings(
        iOS: initializationIOS);
    await notificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: (details) {}
    );
  }
    Future<void> simpleNotificationShow(String title, String body, String minutes, String quantity) async {
    DarwinNotificationDetails darwinNotificationDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    NotificationDetails notificationDetails = NotificationDetails(iOS: darwinNotificationDetails);
    Future.delayed(Duration(seconds: int.parse(minutes)), () {
      for (int i = 0; i < int.parse(quantity); i++) {
        notificationsPlugin.show(Random().nextInt(100000), title, body, notificationDetails);

      }
    });
    }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketsys/pages/login/elements/errorLogin.dart';
import 'package:marketsys/pages/new_notify/newnotify.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:intl/intl.dart';
import 'package:device_info_plus/device_info_plus.dart';


class LoginController extends GetxController{
  TextEditingController emailField = TextEditingController();
  TextEditingController passwordField = TextEditingController();
  static int numberTry = 0;


  void tryTologin(BuildContext context) async {
    final db = await Db.create('mongodb+srv://DeXaPi:b5v6spc0ZkOSimGh@clusterwts.vexh7pm.mongodb.net/users_app');
    await db.open();
    final usersCollection = db.collection('users_app');
    final user = await usersCollection.findOne({'username': emailField.value.text, 'password': passwordField.value.text});
    if(user != null){
      DateTime dateFromDatabase = DateFormat("yyyy-MM-dd").parse(user['date']);
      DateTime currentDate = DateTime.now();
      currentDate = DateTime(currentDate.year, currentDate.month, currentDate.day);
      int differenceInDays = dateFromDatabase.difference(currentDate).inDays;
      if(differenceInDays > -2){
        DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        String deviceName = '${iosInfo.name} ${iosInfo.model}';
        if(deviceName == user['hwid'] || user['hwid'] == ''){
          if(user['hwid'] == ''){
            user['hwid'] = deviceName;
            await usersCollection.update({'username': user['username']}, user);
            await db.close();
          }
          String days = differenceInDays.abs().toString();
          Get.to(NewNotify());
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return ErrorLogin(message: 'Logado com sucesso\nAinda possui $days dias de produto.');
            },
          );
        }else if(deviceName != user['hwid']){
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return ErrorLogin(message: 'Seu hwid é diferente!');
            },
          );
        }
      }else{
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ErrorLogin(message: 'Seu sistema expirou!');
          },
        );
      }
    }else{
      if(numberTry >= 5){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const ErrorLogin(message: 'Excedeu o limite de tentativas!');
          },
        );
      }else{
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const ErrorLogin(message: 'Usuário ou senha incorrta!');
          },
        );
        numberTry += 1;
      }
    }
  }
}
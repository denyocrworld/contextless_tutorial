import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

//TODO: LINK KOMUNITAS:
//! https://tinyurl.com/join-berandal
//? ----
void main() async {
  await initialize();

  Widget mainView = const LoginView();

  runApp(
    MaterialApp(
      navigatorKey: Get.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
